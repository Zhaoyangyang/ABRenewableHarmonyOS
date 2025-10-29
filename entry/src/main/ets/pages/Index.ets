import App from "@system.app";

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text($r('app.string.login_title'))
        .id('HelloWorld')
        .fontSize($r('app.float.30_vp'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .margin({
          top: 100
        })

      Column({ space: 20 }) {
        TextInput({ placeholder: '请输入手机号' })
          .type(InputType.PhoneNumber)
          .width('95%')
          .height($r('app.float.50_vp'))
          .cancelButton({
            style: CancelButtonStyle.CONSTANT,
            icon: {
              size: $r('app.float.30_vp'),
              src: $r('app.media.login_detete')
            }
          })
          .onChange((value: string) => {
            // this.text = value;
          })
        TextInput({ placeholder: '请输入密码(6位数字)' }).type(InputType.NUMBER_PASSWORD)
          .width('95%')
          .height($r('app.float.50_vp'))
          .maxLength(6)

        Button('确认', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor($r('app.color.all_green'))
          .width('95%')
          .height($r('app.float.50_vp'))
          .margin({ top: $r('app.float.20_vp') })

      }.id('InputTextColumn')
      .alignRules({
        top: { anchor: 'HelloWorld', align: VerticalAlign.Bottom },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })
      .margin({
        top: $r('app.float.30_vp'),
        left: $r('app.float.10_vp'),
        right: $r('app.float.10_vp')
      })

      Row() {
        Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
          .width(18)
          .height(18)
          .select(false)
          .selectedColor($r('app.color.all_green'))
          .shape(CheckBoxShape.CIRCLE)
          .onChange((value: boolean) => {
            console.info('Checkbox1 change is' + value);
          })

        Text('已阅读并同意').fontColor(0x5C6273).fontSize(15)
        Text(' 用户协议 ').fontColor(0x000000).fontSize(15)
        Text('和').fontColor(0x5C6273).fontSize(15)
        Text(' 隐私政策 ').fontColor(0x000000).fontSize(15)
      }.alignRules({
        top: { anchor: 'InputTextColumn', align: VerticalAlign.Bottom },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      }).margin({
        top: $r('app.float.10_vp'),
        left: $r('app.float.10_vp'),
        right: $r('app.float.10_vp')
      })


      Row() {

        Image($r('app.media.kefu'))
          .width($r('app.float.25_vp'))
          .height($r('app.float.25_vp'))

        Text($r('app.string.user_manual'))
          .id('UserManual')
          .fontSize($r('app.float.user_manual_font_size'))
          .margin({ left: 10 })

      }.margin({
        bottom: $r('app.float.title_margin_top'),
      }).alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Bottom },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })
    }
    .height('100%')
    .width('100%')
  }
}