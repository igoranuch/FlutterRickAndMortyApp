import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final model = Model();

    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
          child: const MyHomePage(), create: (_) => model),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // @override
  // // void initState() {
  // //   context.read<Model>().getList();
  // //   super.initState();
  // // }

  @override
  void didChangeDependencies() {
    context.watch<Model>().getList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<Model>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Rick And Morty App"),
        ),
        body: ListView.separated(
          itemCount: model.entityRM?.results.length ?? 0,
          itemBuilder: (
            context,
            index,
          ) {
            final image = model.entityRM?.results[index].image;

            return Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    model.entityRM?.results[index].name ?? "",
                  ),
                  leading: image != null
                      ? Image.network(
                          image,
                          height: 100,
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ));
  }
}
