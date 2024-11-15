import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promotions'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter your promo code below:',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Enter Promo Code'),
                  MinLengthValidator(
                    3,
                    errorText: 'Minimum 3 characters required',
                  ),
                ]).call,
                decoration: const InputDecoration(
                  hintText: 'Enter Promo Code',
                  labelText: 'Promo code',
                  prefixIcon: Icon(
                    Icons.card_membership,
                    color: Colors.blue,
                  ),
                  errorStyle: TextStyle(fontSize: 18.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'The promo will be applied to your next ride.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
                const SizedBox(height: 80),
                Center(
                 child: ElevatedButton(
                onPressed: () {
                },
                
                child: const Text('Apply Promo'),
              ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
