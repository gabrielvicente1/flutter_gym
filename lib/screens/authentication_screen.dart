import 'package:flutter/material.dart';
import 'package:gym/_comum/my_colors.dart';
import 'package:gym/components/decoration_field_authentication.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool iWantToEnter = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.navyBlue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.topNavyBlueGradient,
                  MyColors.lowNavyBlueGradient,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key:_formKey,   
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/logo.png", height: 200),
                      Text(
                        "iGym",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: getAutheticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if(value == null){
                            return "O e-mail não pode ser vazio";
                          }
                          if(value.length < 5){
                            return "O e-mail é muito curto";
                          }
                          if (!value.contains ("@")){
                            return "O e-mail não é valido";
                          }
                          return null;
                        },
                      ),
                        SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: getAutheticationInputDecoration("Senha"),
                        obscureText: true,
                        validator: (String? value) {
                          if(value == null){
                            return "A senha não pode ser vazia";
                          }
                          if(value.length < 5){
                            return "A senha é muito curta";
                          }
                          return null;
                        },
                      ),
                        SizedBox(
                        height: 8,
                      ),
                      Visibility(visible: !iWantToEnter, child: Column(
                        children: [
                            TextFormField(
                        decoration: getAutheticationInputDecoration("Confirme Senha"),
                        obscureText: true,
                        validator: (String? value) {
                          if(value == null){
                            return "A confirmação de senha não pode ser vazia";
                          }
                          if(value.length < 5){
                            return "A confirmação de senha é muito curta";
                          }
                          return null;
                        },
                      ),
                        SizedBox(
                        height: 8,
                      ),
                       TextFormField(
                        decoration: getAutheticationInputDecoration("Nome"),
                        validator: (String? value) {
                          if(value == null){
                            return "O nome não pode ser vazio";
                          }
                          if(value.length < 5){
                            return "O nome   é muito curto";
                          }   
                          return null;
                        },
                      ),
                        ],
                      ) ,),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          mainButtomClicked();
                        },
                        child:  Text((iWantToEnter)?"Entrar" : "Cadastrar"),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            MyColors.navyBlue,
                          ),
                          foregroundColor:  WidgetStateProperty.all<Color>(
                            MyColors.white,)
                        ),
                      ),
                      SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            iWantToEnter = !iWantToEnter;
                          });
                        },
                        child: Text(
                          (iWantToEnter)? "Ainda não tem uma conta? Cadastre-se!" : "Já tem uma conta? Entre!",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: MyColors.navyBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  mainButtomClicked(){
    if(_formKey.currentState!.validate()){
      print("Form valid");
    }else{
      print("Form invalid");
    }
  }
}
