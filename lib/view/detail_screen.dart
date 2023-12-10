import 'package:demo3/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:simple_shadow/simple_shadow.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              Container(
                color: const Color.fromARGB(255, 234, 234, 234),
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_back_ios_new),
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                widget.model.favorite = !widget.model.favorite;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: (widget.model.favorite == false)
                                    ? const Icon(Icons.favorite_border)
                                    : const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Hero(
                        tag: widget.model.id,
                        child: SimpleShadow(
                          opacity: 0.6,
                          color: widget.model.color,
                          offset: const Offset(8, 8),
                          sigma: 7,
                          child: Center(
                            child: Image.asset(
                              widget.model.image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: SizedBox(
                        width: double.infinity,
                        height: 90,
                        child: Row(
                          children: [
                            for (int i = 0;
                                i < widget.model.previewImage.length;
                                i++)
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.model.image =
                                            widget.model.previewImage[i];
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            103, 230, 230, 230),
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            widget.model.previewImage[i],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: -20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 255, 106, 0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Row(
                      children: [
                        Text(
                          'Buy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.model.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Price ${widget.model.price}\$',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              widget.model.counter <= 1
                                  ? widget.model.counter
                                  : setState(() {
                                      widget.model.counter--;
                                    });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${widget.model.counter}',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.model.counter++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'All Size',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      for (int i = 0; i < widget.model.size.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            child: Text('${widget.model.size[i]}'),
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Product Detail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReadMoreText(
                  widget.model.description,
                  style: const TextStyle(fontSize: 16),
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  textAlign: TextAlign.justify,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  lessStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  moreStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
