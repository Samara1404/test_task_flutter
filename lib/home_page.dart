import 'package:flutter/material.dart';
import 'package:test_task_flutter/page2.dart';
import 'package:test_task_flutter/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Booster', style: AppTextStyle.style1),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('/ic2.png', width: 20, height: 20, color: Colors.black,),
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('ИНФОРМАЦИЯ ОБ АРТИКУЛЕ',
                        style: AppTextStyle.style1),
                  )),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 240, 240, 240),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Номер артикула *',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                maxLines: 8,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 240, 240, 240),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Описание артикула'),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('МАТЕРИАЛ', style: AppTextStyle.style1),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    width: 390,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          hintText: "Материал, цвет *",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.circle_rounded,
                    size: 56,
                    color: Color.fromARGB(255, 240, 240, 240),
                  ), // TODO:
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    width: 225,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          hintText: "Кол-во на ед. прод. *",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 225,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          hintText: 'Ед. измерения *',
                          suffixIcon: const Icon(Icons.arrow_drop_down_outlined,
                              size: 40),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text('+ материал', style: AppTextStyle.style3),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'ФУРНИТУРА',
                  style: AppTextStyle.style1,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    width: 390,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          hintText: "Фурнитура *",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.circle_rounded,
                    size: 56,
                    color: Color.fromARGB(255, 240, 240, 240),
                  ), // TODO:
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    width: 225,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          hintText: "Кол-во на единицу *",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 225,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          hintText: 'Ед. измерения *',
                          suffixIcon: const Icon(Icons.arrow_drop_down_outlined,
                              size: 40),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text('+ фурнитура', style: AppTextStyle.style3),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 240, 240, 240),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 150)),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const Page2()));
                },
                child: const Text('Сохранить', style: AppTextStyle.style3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
