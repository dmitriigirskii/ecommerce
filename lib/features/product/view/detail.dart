import 'package:ecommerce/features/product/bloc/product_bloc.dart';
import 'package:ecommerce/features/product/service/product.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/global.dart';
import '../../../ui/styles/typography.dart';
import '../models/product.dart';
import 'app_bar.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) =>
            ProductBloc(productService: ProductService())..add(ProductEvent()),
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            switch (state.status) {
              case ProductStatus.failure:
                return const Center(child: Text('failed to fetch product'));

              case ProductStatus.success:
                if (state.product == null) {
                  return const Center(child: Text('no product'));
                }
                return ProductDetailView(product: state.product!);

              default:
                return const Center(
                    child: CupertinoActivityIndicator(radius: i14));
            }
          },
        ),
      ),
    );
  }
}

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  int _selectedTabbar = 0;

  @override
  Widget build(BuildContext context) {
    final Product product = widget.product;

    return Stack(
      children: [
        CustomScrollView(slivers: [
          const ProductDetailAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: m30),
              SizedBox(
                height: 335,
                child: PageView.builder(
                  clipBehavior: Clip.none,
                  controller: PageController(viewportFraction: 0.8),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(r20),
                        boxShadow: boxShadow3,
                        image: DecorationImage(
                          image: NetworkImage(product.images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: m15),
                    );
                  },
                  itemCount: product.images.length,
                ),
              ),
              const SizedBox(height: m20),
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: p30,
                vertical: p30,
              ),
              decoration: BoxDecoration(
                color: cWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(r30),
                  topRight: Radius.circular(r30),
                ),
                boxShadow: boxShadow3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            style: sTitle2.copyWith(
                              color: cDarkBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: m5),
                          Transform.translate(
                            offset: const Offset(-5.0, 0.0),
                            child: buildRating(product.rating),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: Container(
                          width: 37,
                          height: 37,
                          decoration: BoxDecoration(
                            color: cDarkBlue,
                            borderRadius: BorderRadius.circular(r10),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              product.isFavorites
                                  ? 'assets/icons/favorite_fill.svg'
                                  : 'assets/icons/favorite_outline.svg',
                              color: cWhite,
                              width: i14,
                              height: i14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: m25),

                  // the tab bar with two items
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTabbar = 0;
                                });
                              },
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Shop',
                                          style: sTitle3.copyWith(
                                            fontWeight: _selectedTabbar == 0
                                                ? FontWeight.w700
                                                : FontWeight.normal,
                                            color: _selectedTabbar == 0
                                                ? cDarkBlue
                                                : cDark50,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 3,
                                      decoration: BoxDecoration(
                                        color: _selectedTabbar == 0
                                            ? cOrange
                                            : Colors.transparent,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(r10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: m20),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTabbar = 1;
                                });
                              },
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Details',
                                          style: sTitle3.copyWith(
                                            fontWeight: _selectedTabbar == 1
                                                ? FontWeight.w700
                                                : FontWeight.normal,
                                            color: _selectedTabbar == 1
                                                ? cDarkBlue
                                                : cDark50,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 3,
                                      decoration: BoxDecoration(
                                        color: _selectedTabbar == 1
                                            ? cOrange
                                            : Colors.transparent,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(r10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: m20),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTabbar = 2;
                                });
                              },
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Features',
                                          style: sTitle3.copyWith(
                                            fontWeight: _selectedTabbar == 2
                                                ? FontWeight.w700
                                                : FontWeight.normal,
                                            color: _selectedTabbar == 2
                                                ? cDarkBlue
                                                : cDark50,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 3,
                                      decoration: BoxDecoration(
                                        color: _selectedTabbar == 2
                                            ? cOrange
                                            : Colors.transparent,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(r10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: m30),
                      Column(
                        children: [
                          if (_selectedTabbar == 0)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildProductInfo(),
                                const SizedBox(height: 25),
                                Text(
                                  'Select color and capacity',
                                  style: sCallout.copyWith(color: cDarkBlue),
                                ),
                                const SizedBox(height: 15),
                                colorAndCapacity(),
                              ],
                            )
                          else if (_selectedTabbar == 1)
                            const Center(child: Text("Details"))
                          else if (_selectedTabbar == 2)
                            const Center(child: Text("Features")),
                        ],
                      ),
                    ],
                  ),

                  // const SizedBox(height: m25),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ]),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: cWhite,
            padding: const EdgeInsets.symmetric(
              horizontal: p30,
              vertical: p30,
            ),
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                color: cOrange,
                borderRadius: BorderRadius.circular(r10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Add to Cart',
                    style: sTitle3.copyWith(
                      color: cWhite,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: sTitle3.copyWith(
                      color: cWhite,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRating(double rating) {
    return RatingBar(
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 18,
      ratingWidget: RatingWidget(
        full: const Icon(Icons.star, color: Colors.amber),
        half: const Icon(Icons.star_half, color: Colors.amber),
        empty: Icon(Icons.star, color: Colors.amber.withOpacity(0.25)),
      ),
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      onRatingUpdate: (rating) {},
    );
  }

  Widget buildProductInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/cpu.svg',
                color: cGray2,
                width: i28,
                height: i28,
              ),
            ),
            const SizedBox(height: m5),
            Text(
              widget.product.CPU,
              style: sCaption1.copyWith(color: cGray2),
            ),
          ],
        ),
        Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/camera.svg',
                color: cGray2,
                width: i28,
              ),
            ),
            const SizedBox(height: m5),
            Text(
              widget.product.camera,
              style: sCaption1.copyWith(color: cGray2),
            ),
          ],
        ),
        Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/memory.svg',
                color: cGray2,
                width: i28,
              ),
            ),
            const SizedBox(height: m5),
            Text(
              widget.product.ssd,
              style: sCaption1.copyWith(color: cGray2),
            ),
          ],
        ),
        Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/card.svg',
                color: cGray2,
                height: 22,
              ),
            ),
            const SizedBox(height: m5),
            Text(
              widget.product.sd,
              style: sCaption1.copyWith(color: cGray2),
            ),
          ],
        ),
      ],
    );
  }

  Widget colorAndCapacity() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          spacing: m20,
          children: List.generate(
            widget.product.color.length,
            (index) {
              final hexColor = widget.product.color[index].substring(1);
              return Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                  color: Color(int.parse("0xFF$hexColor")),
                  shape: BoxShape.circle,
                ),
              );
            },
          ),
        ),
        Wrap(
            spacing: m20,
            children: List.generate(widget.product.capacity.length, (index) {
              return Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: p10),
                decoration: BoxDecoration(
                  color: cOrange,
                  borderRadius: BorderRadius.circular(r10),
                ),
                child: Center(
                  child: Text(
                    '${widget.product.capacity[index]} GB',
                    style: sBody.copyWith(
                        color: cWhite, fontWeight: FontWeight.w700),
                  ),
                ),
              );
            })),
      ],
    );
  }
}
