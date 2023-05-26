import 'package:flutter/material.dart';
import 'package:vesti_user_form/user_model.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  UserModel userModel = UserModel();

  @override
  void initState() {
    super.initState();
    userModel.skills = List<String>.empty(growable: true);
    userModel.skills!.add("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff List'),
        backgroundColor: Colors.transparent,
      ),
      body: _uiWidget(),
    );
  }

  Widget _uiWidget() {
    return Form(
      key: globalKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FormHelper.inputFieldWidgetWithLabel(
                context,
                'fullname',
                'Full Name',
                '',
                (onValidateVal) {
                  if (onValidateVal.isNull) {
                    return 'Fullname required';
                  }

                  return null;
                },
                (onSavedVal) {
                  this.userModel.fullName = onSavedVal;
                },
                initialValue: userModel.fullName ?? "",
                borderColor: Color(0xFF3E6F26),
                borderFocusColor: Color(0xff3E6F26),
                borderRadius: 5,
                fontSize: 16,
                labelFontSize: 16,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                'EmailAddress',
                'Email Address',
                '',
                (onValidateVal) {
                  if (onValidateVal.isNull) {
                    return 'Email Address required';
                  }

                  return null;
                },
                (onSavedVal) {
                  this.userModel.emailAddress = onSavedVal;
                },
                initialValue: userModel.emailAddress ?? "",
                borderColor: Color(0xFF3E6F26),
                borderFocusColor: Color(0xff3E6F26),
                borderRadius: 5,
                fontSize: 16,
                labelFontSize: 16,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                'Address',
                'Address',
                '',
                (onValidateVal) {
                  if (onValidateVal.isNull) {
                    return 'Address required';
                  }

                  return null;
                },
                (onSavedVal) {
                  this.userModel.address = onSavedVal;
                },
                initialValue: userModel.address ?? "",
                borderColor: Color(0xFF3E6F26),
                borderFocusColor: Color(0xff3E6F26),
                borderRadius: 5,
                fontSize: 16,
                labelFontSize: 16,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              _skillsContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _skillsContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Skill(s)',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [SkillUI(index)],
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: userModel.skills!.length)
      ],
    );
  }

  Widget SkillUI(index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
            child: FormHelper.inputFieldWidget(
              context,
              'skill_$index',
              '',
              (onValidateVal) {
                if (onValidateVal.isNull) {
                  return 'Skill ${index + 1} required';
                }

                return null;
              },
              (onSavedVal) {
                this.userModel.skills![index] = onSavedVal;
              },
              initialValue: userModel.address ?? "",
              borderColor: Color(0xFF3E6F26),
              borderFocusColor: Color(0xff3E6F26),
              borderRadius: 5,
              fontSize: 16,
              paddingLeft: 0,
              paddingRight: 0,
            ),
          ),
          Visibility(
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFF3E6F26)),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0XFF3E6F26).withOpacity(0.2)),
              child: GestureDetector(
                onTap: () {
                  addSkillsControl();
                },
                child: const Row(
                  children: [
                    Icon(Icons.add),
                    Text('Add Skill'),
                  ],
                ),
              ),
            ),
            visible: index == userModel.skills!.length - 1,
          ),
          Visibility(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0XFF2E0507)),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff2e0507).withOpacity(0.2)),
              width: 120,
              height: 40,
              child: GestureDetector(
                onTap: () {
                  removeSkillsControl(index);
                },
                child: const Row(
                  children: [
                    Icon(Icons.remove),
                    Text('Remove Skill'),
                  ],
                ),
              ),
            ),
            visible: index > 0,
          ),
        ],
      ),
    );
  }

  void addSkillsControl() {
    setState(() {
      userModel.skills!.add("");
    });
  }

  void removeSkillsControl(index) {
    setState(() {
      if (userModel.skills!.length > 1) {
        userModel.skills!.removeAt(index);
      }
    });
  }
}
