
import 'package:category/feature/category/model/category_model/category_model.dart';
import 'package:category/feature/category/view/screen/category_details.dart';
import 'package:flutter/material.dart';

class SuccessWidgetProduct extends StatelessWidget {
  const SuccessWidgetProduct({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryDetails(categoryModel: categoryModel),
          ),
        );
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    categoryModel.image,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        categoryModel.category,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('price:            '),
                          Text(
                            '\$${categoryModel.price}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    categoryModel.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    categoryModel.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(
                        categoryModel.rating.rate.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '(${categoryModel.rating.count} reviews)',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // child: Card(
      //   elevation: 5,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         // CircleAvatar(
      //         //   backgroundColor: Colors.purpleAccent,
      //         //   child: Text(
      //         //     categoryModel.id.toString(),
      //         //     style: const TextStyle(
      //         //         fontSize: 20,
      //         //         fontWeight: FontWeight.bold,
      //         //         color: Colors.white),
      //         //   ),
      //         // ),
      //         // SizedBox(height: 15),
      //         Image.network(
      //           categoryModel.image,
      //           fit: BoxFit.cover,
      //           height: 150,
      //         ),
      //         SizedBox(height: 10),
      //         Text(
      //           categoryModel.title,
      //           style: const TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.deepPurple),
      //         ),
      //         SizedBox(height: 10),
      //         Text(
      //           categoryModel.description,
      //           style: const TextStyle(
      //               fontSize: 18,
      //               color: Colors.black,
      //               fontWeight: FontWeight.normal),
      //         ),
      //         SizedBox(height: 10),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(
      //               "Price: \$${categoryModel.price}",
      //               style: const TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.deepPurple,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(height: 8),
      //             Text(
      //               categoryModel.category,
      //               style: const TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.deepPurple,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             Text(
      //               categoryModel.rating.rate.toString(),
      //               style: const TextStyle(
      //                   fontSize: 16, fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(width: 5),
      //             Text(
      //               "(${categoryModel.rating.count}reviews)",
      //               style: const TextStyle(fontSize: 16),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
