

#import "DXLoginRegisterTextField.h"

#import <objc/runtime.h>

@interface DXLoginRegisterTextField ()<UITextFieldDelegate>

@end

static NSString * const DXPlaceholderColorKey = @"placeholderLabel.textColor";
@implementation DXLoginRegisterTextField

- (void)awakeFromNib
{
    // 这个placeholderLabel是懒加载,一开始是没有的,所以打印不出来这个控件
    // DXLog(@"%@",self.subviews);
    self.tintColor = [UIColor whiteColor];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(editingDidBegin) name:UITextFieldTextDidBeginEditingNotification object:self];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(editingDidEnd) name:UITextFieldTextDidEndEditingNotification object:self];
//
    //[self setValue:[UIColor grayColor] forKeyPath:DXPlaceholderColorKey];
    
//    [self addTarget:self action:@selector(editingDidBegin) forControlEvents:UIControlEventEditingDidBegin];
//    [self addTarget:self action:@selector(editingDidEnd) forControlEvents:UIControlEventEditingDidEnd];
//
 //   self.delegate = self;
    
//  unsigned int count = 0;
//    Ivar *ivarList = class_copyIvarList([UITextField class], &count);
//    for (int i = 0; i<count; i++) {
//        Ivar ivar = ivarList[i];
//        DXLog(@"%s",ivar_getName(ivar));
//    }
//    
//    free(ivarList);
//    
    // valueForKey可以找到,valueForKeyPath
//    UILabel *label = [self valueForKeyPath:@"_placeholderLabel"];
//    label.textColor = [UIColor whiteColor];
    //DXLog(@"%@",self.subviews);
    // 这个方法调用时刻,当一个控件从xib或者storyBoard中创建之前,就会调用这个方法,
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//
//         DXLog(@"%@",self.subviews);
//        UILabel *label = [self valueForKeyPath:@"_placeholderLabel"];
//        label.textColor = [UIColor orangeColor];
//    });
//    
//}
    
  //  NSMutableAttributedString *attributeM = [[NSMutableAttributedString alloc] initWithString:self.placeholder];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor redColor];
    NSAttributedString *attribute = [[NSAttributedString alloc] initWithString:self.placeholder attributes:dict];
    
    
    [self setAttributedPlaceholder:attribute];
    
}
- (NSString *)placeholder
{
    return @"";
}


//#pragma mark -------- <UITextFieldDelegate>---------
//- (void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:DXPlaceholderColorKey];
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField
//{
//    [self setValue:[UIColor grayColor] forKeyPath:DXPlaceholderColorKey];
//}

//- (void)dealloc
//{
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//}
//
//- (void)editingDidBegin
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:DXPlaceholderColorKey];
//}
//
//- (void)editingDidEnd
//{
//    [self setValue:[UIColor grayColor] forKeyPath:DXPlaceholderColorKey];
//}



//- (void)drawPlaceholderInRect:(CGRect)rect
//{
//    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
//    dictM[NSFontAttributeName] = self.font;
//    dictM[NSForegroundColorAttributeName] = [UIColor redColor];
//    CGPoint point = CGPointMake(0, (rect.size.height - self.font.lineHeight) * 0.5);
//    
//    [self.placeholder drawAtPoint:point withAttributes:dictM];
//}

//- (BOOL)becomeFirstResponder
//{
//    [self setValue:[UIColor whiteColor] forKeyPath:DXPlaceholderColorKey];
//    return [super becomeFirstResponder];
//}
//
//- (BOOL)resignFirstResponder
//{
//    [self setValue:[UIColor grayColor] forKeyPath:DXPlaceholderColorKey];
//    return [super resignFirstResponder];
//}

@end
