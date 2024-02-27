import 'package:flutter/material.dart';
import 'package:test_task_flutter/page3.dart';
import 'package:test_task_flutter/style.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Booster', style: AppTextStyle.style1),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                '/ic2.png',
                width: 20,
                height: 20,
                color: Colors.black,
              ),
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
                child:
                    Text('ИНФОРМАЦИЯ ОБ АРТИКУЛЕ', style: AppTextStyle.style1),
              )),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 240, 240, 240),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "Номер артикула",
                  hintText: 'М038745',
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
                    labelText: "Описание артикула",
                    hintText: 'Описание'),
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
                          labelText: "Материал",
                          hintText: "Турецкий футер, синий",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    
                    Icons. circle_rounded,
                    
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
                          labelText: 'Количество на ед. продукта',
                          hintText: "2.5",
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
                          labelText: "Фурнитура",
                          hintText: 'Шнурок',
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
                child: const Text('+ материал', style: AppTextStyle.style4 ,
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                     padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal:70,
                      ) ),
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
                          labelText: "Фурнитура",
                          hintText: "Шнурок",
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
                          labelText: "Количество на единицу",
                          hintText: "0.8",
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
                          fillColor: Color.fromARGB(255, 240, 240, 240),
                          labelText: "Единица измерения",
                          hintText: 'метр',
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
                child: const Text('+ фурнитура', style: AppTextStyle.style4 ,
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                     padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal:70,
                      ) ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 150)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page3()));
                },
                child: const Text(
                  'Сохранить',
                  style: AppTextStyle.style4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
