import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfinityScrollScreen extends StatefulWidget{
  static const name = 'infinity_scroll_screen';

  const InfinityScrollScreen({super.key});

  @override
  State<InfinityScrollScreen> createState() => _InfinityScrollScreenState();
}

class _InfinityScrollScreenState extends State<InfinityScrollScreen> {

  List<int> imagesIds = [1,2,3,4,5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState(){
    super.initState();

    scrollController.addListener((){
      if ( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        loadNextPage();
      }
    });
  }

  void addFiveImages(){
    final lastId = imagesIds.last;

    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
  }

  Future loadNextPage() async {

    if( isLoading ) return;
    isLoading = true;
    setState(() {});

    await Future.delayed( const Duration(seconds: 2));
    addFiveImages();
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
  }

  Future<void> onRefresh() async {    
    isLoading = true;
    setState(() {});
    await Future.delayed( const Duration(seconds: 3));
    if (!isMounted) return;

    isLoading = false;
    final lastId = imagesIds.last;
    
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFiveImages();

    setState(() {});

  }


  @override
  void dispose(){
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          edgeOffset: 10,
          strokeWidth: 2,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imagesIds[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: isLoading
            ? SpinPerfect(
                infinite: true,
                child: const Icon(Icons.refresh_rounded),
              )
            : const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}
