import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';
import 'package:shamo_app/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }

  AppBar header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      toolbarHeight: 70,
      centerTitle: false,
      titleSpacing: 0,
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(color: primaryTextColor),
      title: Row(
        children: [
          Image.asset(
            'assets/icon/ic_store.png',
            width: 50,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shoes Store',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              Text(
                'Online',
                style: secondaryTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message...',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    color: primaryTextColor,
                    Icons.send_rounded,
                    size: 19,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget productPreview() {
    return Container(
      width: 230,
      height: 75,
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor5,
        border: Border.all(
          color: primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/img_shoes.png',
              height: 54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COURT VISION 2.0',
                  style: primaryTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$57,15',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 19,
          ),
          Image.asset(
            'assets/icon/ic_close.png',
            width: 22,
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: const [
        ChatBubble(
          isSender: true,
          text: 'Hi, This item is still available?',
          hasProduct: true,
        ),
        ChatBubble(
          isSender: false,
          text: 'Good night, This item is only available in size 42 and 43',
        ),
      ],
    );
  }
}
