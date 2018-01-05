//: Playground - noun: a place where people can play

import UIKit


//你好世界
var str = "Hello, playground"
print(str)


//常量let 变量var
let name = "kid"
var age = 13
//age = "nihao" age的类型会自动判断 为int  这样做的错误是类型不匹配
//name = "jack" name是let类型 不可变 
age = 17 //var类型可变
print("姓名:",name,"年龄:", age) //打印输出
var num = 3.14
num = Double(age)+num //类型转换


//布尔值
let trueValue = true
let falseValue = false


//if语句的判断条件必须是布尔类型
if trueValue {
    print("true类型")
}


//元组
let httpErro = (404,"Not Found")//内部类型可以不同  如:int string
print(httpErro)
let (code, message) = httpErro //元组的赋值
print("code:\(code), message:\(message)")
let (_,erroMessage) = httpErro // _ 可以起到省略的作用
let eroorCode = (requestEroor:401,402,403) //元组可以给元素命名
print(eroorCode.requestEroor,eroorCode.1) //可以使用命名或索引获取元素


//可选类型 表示可能没有值
var erroCode : Int? = 404
print(erroCode!)
erroCode = nil //对非可选类型赋值nil会报错
//num = nil  报错
var errorMessage : String? //可选类型  默认为nil
print(errorMessage ?? "nil")
if let i =  errorMessage  { //可选绑定 赋值给一个临时的变量或常量
    print(i)
}else{
    print(errorMessage as Any)
}


//隐式解析 必定有值  可以把?改成!号  免去解析的麻烦
let assString : String! = "ee"
print(assString)


//基本运算
var a = 5
var b = 10  //赋值运算  10赋值给b 5给a
//多元组
let (x,y) = (4,5)
print(x) //x=>4
print(y) //y=>5
//算数运算 加,减,乘,除
3 + 3
3 - 1
3 * 4
9 / 6
//求余运算
9 % 5
-11 % 3
11 % -3
//组合赋值运算
a += 2
//比较运算
4 == 3
4 != 3
4 > 3
4 < 3
4 >= 3
4 <= 3
//三目运算
let c = a == 3 ? 7:8
//空合运算
var optionale : Int?
let d = optionale ?? 6  //如果有值就返回值  无值返回后面的值 6
//区间运算符
1...5 //表示1,2,3,4,5
1..<5 //表示1,2,3,4
//逻辑运算符
!true       //非  取反
true && true//与  同为真则真
false || true//或  有一个为真则真


//字符串操作
let someString = "string1 " //字面量赋值
var someString1 = ""  //空值  可变
let someString2 = String() //初始化  不可变
someString.isEmpty
someString1.isEmpty //通过isEmpty判断是否有值
//字符操作
let char : Character = "b"  //字符类型是 Character
for char in someString.characters{  //遍历字符串中的每个字符
    print(char)
}
someString.characters.count //字符的个数 会包含空格
//字符串 拼接
var string1 = "hallo"
var string2 = " world"
string1 += string2      //可以直接相加
string1 .append("!")    //append 后面添加字符的方法
let msg = "hello\(string2)"
//字符串中字符的索引
msg[msg.startIndex] //startIndex 字符串的第一个字符的索引
msg.index(after: msg.startIndex)  //获取第一个字符的索引
msg.index(before: msg.endIndex)   //获取最后一个字符的索引
let index = msg.index(msg.startIndex, offsetBy: 6)// 初始化位置偏移6
msg[index]
//msg[msg.endIndex]  索引不能越界
//字符串的插入和删除
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex) //将!插入末尾 只能插入一个字符
welcome.insert(contentsOf: " world".characters, at: welcome.index(before: welcome.endIndex)) //必须是插入world.characters  可插入多个字符
//删除
welcome.remove(at: welcome.index(before: welcome.endIndex))//删除最后一个字符
print(welcome)
welcome.removeSubrange(welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex) //删除一个区间的字符
//字符串的比较
welcome == "Hello"          //可以用== != 进行比较
welcome.hasPrefix("Hel")    //是否有特定的前缀
welcome.hasSuffix("llo")    //是否有特定的后缀


//数组  有序,同类型,多元素集合
var arrInts = [Int]() //定义一个Int类型的可变空数组
arrInts.append(2)     //添加一个2的元素
arrInts = []          //空数组的简单定义方式
arrInts = [1,4,7,9,]  //数组的构造方法
//数组的拼接 以及相同元素组的创建
var threeDouble = [Double](repeating:0.0, count:3)
var twoDouble = [Double](repeating:2.0, count:2)
twoDouble += threeDouble         //数组可用+拼接  也可以使用+=
//获取数组元素以及修改
let secondNum = twoDouble[1]    //通过下标索引获取元素
twoDouble[0] = 6.0              //修改第一个元素的值
twoDouble[3...4] = [8.0,8.0]    //修改区间的值 多则加 少则减元素
twoDouble
//数组元素的插入和删除
twoDouble.insert(9.0, at: 0)    //插入一个元素为第一个元素
twoDouble.remove(at: 0)         //删除第一个元素
twoDouble.removeLast()          //删除最后一个元素
for arr in twoDouble{           //遍历元素
    print("arr \(arr)")
}
for (index1, value) in twoDouble.enumerated() //遍历元素及索引
{
    print("索引\(index1), 元素\(value)")
}


//集合  相同类型, 无序 , 不重复
var char1 = Set<Character>()     //创建一个Character类型的空结合
let char2 : Set<Character> = []  //定义空集合的简便方法
//集合类型不可以省略类型
var letter1:Set = ["56","7","4"] //这是集合类型
var letter2 = ["s","g","r"]      //这是数组
//集合元素的访问和修改
letter1.count                   //获取元素个数
letter1.isEmpty                 //判断是否为空
letter1.insert("s")             //插入一个元素   如果存在则会被忽略
let u = letter1.remove("4")     //如果要删除的元素存在集合中  则返回元素  否则返回nil
letter1.contains("4")           //检查集合是否存在某个元素 返回布尔类型
for cc in letter1{              //无序输出
    print(cc)
}
for cc in letter1.sorted(){     //按特定的顺序输出
    print(cc)
}
//操作集合中的元素
var num1: Set = ["3", "2", "1", "5", "9"]
let num2: Set = ["3", "2", "1", "5", "7"]
let num3: Set = ["1", "3", "5"]
num1.intersection(num2)         //返回俩个几个都包含的值
num1.union(num2)                //返回俩个集合所有的值
num1.subtracting(num2)          //返回num1中独有的值
num1.symmetricDifference(num2)  //返回俩个集合不重叠的值
num2 == num3                    //判断俩集合元素是否相同
num3.isSubset(of: num2)         //num3是否是num2的子集
num2.isSuperset(of: num3)       //num2是否是num3的超集合(包含num3的所有元素)
num1.isDisjoint(with: num3)     //判断俩个集合中的元素是否都不相同


//字典
var chars : [String:String] = ["char1":"A","char2":"B"]
var charDict = ["char1":"A","char2":"B"]
//字典操作
chars.count                             //元素个数
chars.isEmpty                           //是否为空
chars["char3"] = "C"                    //新增元素
chars["char1"] = "a"                    //修改key对应的值
chars.updateValue("D", forKey: "char4") //更新键值对, 键不存在则会添加一个
print(chars)
chars["char2"]                          //通过键取得值
chars["char3"] = nil                    //移除键值对
chars.removeValue(forKey: "char1")      //移除键值对
print(chars)
//遍历元素
for (key, value) in charDict{           //遍历key及value
    print("key:\(key),value:\(value)")
}
for key in charDict.keys{               //遍历key
    print(key)
}
for value in charDict.values{           //遍历value
    print(value)
}
//获取字典所有的key或value
let arrKeys = [String](charDict.keys)
let arrValue = [String](charDict.values)


//流程控制

for i in 0...5{                         //for循环
    print(i)
}

var numm = 3                            //while循环
while numm > 0 {
    print(numm)
    numm -= 1
}

var nummm = 3
repeat{                                 //repeat-While循环  至少保证循环一次
    print(nummm)
    nummm -= 1
}while nummm > 0

if numm == 3{                           //if分支语句
    print("numm等于3了")
}else{
    print("numm不等于3")
}

numm = 12
switch numm {                           //switch语句
case 2:
    print("numm等于2")
case 3,4,5:
    print("numm等于3或4或5")
case 6..<10:                            //支持区间  可以匹配多个值
    print("大于等于6 小于10")
case 10..<19 where numm % 3 == 0:       //可以使用where来增加额外判断条件
    print("大于等于10,小于19,能被3整除")
default:
    print("以上都不是")
}
//控制转移语句
numm = 5
while numm > 0 {
    numm -= 1
    if numm == 2 {
        continue                        //停止当前循环  开始下次循环
    }
    print(numm)
}

numm = 5
while numm > 0 {
    print(numm)
    numm -= 1
    if numm == 2 {
        break                           //终止循环
    }
}

numm = 2
switch numm {
case 2:
    print("Hallo")
    fallthrough                         //贯穿 会执行下一个语句
default:
    print("World")
}

//循环语句的标签设置
var numm2 = 4
numm = 6
numLoop: while numm > 0{
    num2Loop: while numm2 > 0{
        print(numm2)
        numm2 -= 1
        break num2Loop                  //标签 可以指定终止
    }
    print(numm)
    numm -= 1
}

//guard语句 守卫
numm2 = 4
func guardText(){
    guard numm2 == 5 else {             //如果条件不满足,则会执行后面的语句
        print(numm2)
        return                          //由于有return, guard语句必需要在函数中
    }
}
guardText()

//版本适配
if #available(iOS 10, *){               // 平台还可以是: iOS macOS watchOS tvOS
                                        // 使用iOS10及以上的API
}else{
                                        // 使用iOS10以下的API
}


//函数  完成特定任务的独立代码块
func greet (person: String) -> String{  //func 函数名(参数名: 参数类型) -> 返回值类型
    return "Hallo \(person)!"
}
let greetWorld =  greet(person: "Kidd")
print(greetWorld)

//参数以及返回值
func say() -> String{
    return "Hallo"                      //无参数 有返回值
}
print(say())

func say(preson1: String, preson2: String) -> String{
    return"Hallo \(preson1) \(preson2)!"
}                                       //多个参数且有返回值
print(say(preson1: "Jack", preson2: "Tom"))

func hallo() {                          //无参数无返回
    print("你好")
}
hallo()

//求数组中的最大值和最小值
func minMax (array:[Int]) -> (min: Int, max: Int)? {
    
    if array.isEmpty {                  //使用元组返回多个参数 考虑可能为空 使用可选类型
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        }else if(value > currentMax){
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [5,745,67,4,37,89])
print(bounds!.min)
print(bounds!.max)                      //!强制解包  表示一定有值
//函数的参数标签和参数名称
func someFunction (lable name: String) -> String {
                                        //lable是参数标签  name是参数名称
    return name                         //内部用参数名称
}
someFunction(lable: "吴勇")              //外部用参数标签

func igonreLable (_ name1: String, lable2 name2: String) -> String {
    return name1 + name2                //下划线_ 可以代替标签
}
igonreLable("Tom", lable2: " Jack")     //_ 不会显示标签

//函数的默认参数
func defaultLable (lable1 name: String, lable2 name2: String = "jack") {
    print(name + "和" + name2)
}
defaultLable(lable1: "Tome")
defaultLable(lable1: "Tom", lable2: "kidd")

//函数有不确定个参数
func avarageNum(_ num: Double...) -> Double {//参数后面加... 表示有多个参数
    var total: Double = 0
    for number in num{
        total += number
    }
    return total / Double(num.count)
}
print(avarageNum(4,6,3,2,6,9,5,1))          //参数个数不限  一个函数只能有一个可变参数

//inout改变输出参数
func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temp = a                             //加inout可以传指针
    a = b
    b = temp
    
}
var aa = 2
var bb = 3
swapTwoInts(&aa, &bb)
print(aa,bb)

//函数类型      可以把一个函数当做一个变量或常量赋值给你个常量或变量
var swap = swapTwoInts
swap(&aa,&bb)
print(aa,bb)

//函数作为参数传入另一个函数
func sum (num1: Int, num2: Int) -> Int{
    return num1 + num2
}
func sub (num1: Int, num2: Int) -> Int{
    return num1 - num2
}
func mathNumber(_ mathFunc: (Int, Int) -> Int, a: Int, b: Int) -> Int{
    return (mathFunc(a,b))
}
mathNumber(sub, a: 4, b: 2)
mathNumber(sum, a: 4, b: 2)
//函数的返回值是函数
func chooseSumOrSub(_ isSum: Bool) -> (Int, Int) -> Int{
    return isSum ? sum:sub
}
chooseSumOrSub(false)(8,4)          //返回一个函数   再调用这个函数

//函数的嵌套
func chooseSunOrSun(isSum: Bool, _ a: Int, _ b : Int) -> Int{
    func sum (num1: Int, num2: Int) -> Int{
        return num1 + num2
    }
    func sub (num1: Int, num2: Int) -> Int{
        return num1 - num2
    }
    return (isSum ? sum(num1: a, num2: b) : sub(num1: a, num2: b))
}
chooseSunOrSun(isSum: false, 8, 5)


//闭包   用来捕获, 存储传递代码块以及变量常量的引用
let nums = [2,8,3,7,4,9]
let sortNums = nums.sorted()

func backward(_ s1: Int, _ s2: Int) -> Bool{//定义sorted规则
    return s1 > s2                          //传入类型与nums一致, 返回布尔值
}
let sortNums1 = nums.sorted(by: backward)
//闭包表达语法
// { (参数名1: 参数类型, 参数名2: 参数类型) -> 返回类型 in
//     代码块
//     return 返回值
// }
let sortedNums2 = nums.sorted(by: {(n1: Int , n2: Int) -> Bool in return n1 > n2})
print(sortedNums2)

//闭包的简化
let sortedNums3 = nums.sorted(by: {n1 , n2 in return n1 > n2})
print(sortedNums3)                      //可以根据上下文推断参数以及返回值类型

let sortedNums4 = nums.sorted(by: {n1 , n2 in n1 > n2})
print(sortedNums4)                      //隐式返回返回单行表达式 省略return

let sortedNums5 = nums.sorted(by: {$0 > $1})
print(sortedNums5)                      //内联闭包可以进行参数名缩写, in也可以省略

let sortedNums6 = nums.sorted(by: < )
print(sortedNums6)                      //返回类型正好匹配
//在开发中尽量保持代码的可读性


//尾随闭包:调用函数时,要将闭包作为函数的参数传递,如果太长可以写在函数括号之后
func funcTakeClosure(closure: () -> Void){//闭包作为参数   无返回值
    closure()
}
funcTakeClosure(closure: {print("不使用尾随闭包")} )
funcTakeClosure() {                       //使用尾随闭包可以省略参数标签
    print("使用尾随闭包")
}
let sortNums7 = nums.sorted{$0 > $1}    //使用尾随闭包调用函数
print(sortNums7)                        //这个函数只有一个参数 并且是闭包表达式, 还可以省略()

//值捕获: 捕获变量或常量
func makeAdd(forAdd amout: Int) -> () -> Int{
    var totle = 0
    func add() -> Int {
        totle += amout                  // 在函数体内捕获了total和amount两个变量的引用
        return totle                    // 捕获保证了两个变量在makeAdd调用完并不会消失
    }
    return add                          // 并且保证在下次调用makeAdd时候total依然存在
}
let addTen = makeAdd(forAdd: 10)        //此常量持续拥有add()函数
addTen()                                //每次调用都会将total加10
addTen()

let addSeven = makeAdd(forAdd: 7)       //开辟了一块新的内存
addSeven()
addTen()                                //addTen和addSeven互不影响

//闭包是引用类型
addTen()                                //addTen其实是引用类型,指向了为add开辟的内存空间
let also = addTen()
also                                    //将闭包赋值给不同的常量或变量,都会指向同一个闭包

//逃逸闭包: 当一个闭包作为参数传到一个函数中,这个闭包要在函数返回的时候才会被执行 
var handlers: [() -> Void] = []         //定义一个闭包
func funcWithEscaping(asdfgh: @escaping () -> Void) { // 外部定义的闭包需要添加标记@escaping
    handlers.append(asdfgh)
}
func funcWithNoneEscaping(closure: () -> Void){
    closure()
}
class tempClass{
    var x = 10
    func doSomething() {
        funcWithNoneEscaping {
            x = 200
        }
        funcWithEscaping {
            self.x = 100                // 加了@escaping标记,需要显式引用self
        }
    }
}
let instance = tempClass()
instance.doSomething()
print(instance.x)
handlers.first?()
print(instance.x)

//自动闭包: 一种自动创建的闭包,用来当作函数的参数 
//自动闭包只有在调用的时候,闭包中的代码才会被执行
//这种闭包不接受任何参数,被调用的时候回返回被包装在其中的表达式的值
var namess = ["Jack", "Tom","Alex","Bob"]
namess.count
let customerP = { namess.remove(at: 0)} //定义一个自动闭包, 背部移除第一个元素
customerP()                             //执行闭包
namess.count                            //移除了第一个元素

func serve(customeP: () -> String) {
    customerP()                         //执行闭包参数
}
serve(customeP: {
    namess.remove(at: 0)                //将闭包传入参数
})
namess.count
func serve(customerP: @autoclosure () -> String) { //添加@autoclosure能自动转化为闭包
    customerP()                         //执行闭包
}
serve(customerP: namess.remove(at: 0))  //可以将string类型参数传进去
namess.count


//枚举    将一组相关的值定义成共同的类型
enum enumName {                         //枚举语法格式,可以不指定语法类型
    case caseName                       //使用case定义枚举值成员
}
enum compassPoint {                     //枚举表示指南针四个方向
    case North                          //枚举成员不会隐式赋值
    case South
    case East
    case West
}
enum compassPoint1 {
    case North, South, East, West       //成员值也可以横着写
}
var direction = compassPoint.North      //direction是compassPoint类型
direction = .West                       //类型确定后可以有简略写法

//使用switch语句匹配枚举值
direction = .East
switch direction {
case .East:
    print("EAST")
case .South:
    print("SOUTH")
default:
    print("WAST AND NORTH")
}

//关联值: 枚举可以储存和修改不同类型的关联值
enum Person {
    case Locstion(Double, Double)
    case Name(String)
}
var  p1 = Person.Locstion(87.21, 90.123)
p1 = .Name("Jack")                      //同一时间只能储存一个值
p1 = .Name("Tom")

switch p1 {
case .Locstion(let x, let y):
    print("x:\(x), y\(y)")
case .Name(let name):
    print(name)
}

//原始值 : 可以给枚举成员设置默认填充值, 但类型必须一致
enum ASCIIChar: Character {             //声明枚举值成员类型
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}
print(ASCIIChar.LineFeed.rawValue)
//原始值的隐式赋值, 当使用证书作为原始值 ,隐式赋值依次递增1
enum Mouth: Int {
    case January = 1,February, March, April, May
}
print(Mouth.March.rawValue)
//想要和OC一样隐式赋值  可以设置枚举成员类型为 Int

enum Direct: String{
    case North
    case South
    case East
    case West
}
print(Direct.North.rawValue)
//在定义枚举类型的时候使用了原始值, 会自动获得一个初始化的方法
let secondMonth = Mouth(rawValue: 2)    //获得一个可选类型
print(secondMonth)

//用递归枚举穿件表达式: (5+4)*2
enum Arth {
    case Number(Int)
    indirect case Add(Arth, Arth)       //indirect表示枚举成员可递归
    indirect case Mul(Arth, Arth)
}
let five = Arth.Number(5)
let foue = Arth.Number(4)
let sum = Arth.Add(five, foue)
let resule = Arth.Mul(sum, Arth.Number(2))
func evaluate(express: Arth) -> Int {
    switch express {
    case .Number(let value):
        return value
    case .Add(let left, let right):
        return evaluate(express: left) + evaluate(express: right)
    case .Mul(let left, let right):
        return evaluate(express: left) * evaluate(express: right)
    }
}
print(resule)
print(evaluate(express: resule))


//类和结构体  都可以通过定义属性和添加方法来扩展功能

// 类和结构体的共同点:通过定义属性存储值; 通过定义方法提供功能; 通过定义构造器生成初始化值

// 类与结构体的区别:
// 类:允许一个类继承另一个;允许引用计数器对一个类的多次引用
// 结构体:结构体通过复制的方式在代码中传递; 不使用引用计数器

//类与结构体的语法定义
class ClassName{                    //类名首字母用大写
                                    //属性名和方法名的首字母用小写
}

struct StructName{                  //同上
    
}

//实例化类和结构体, 访问属性
struct Resolution {                 //Resolution结构体
    var width = 0                   //包含狂爱俩个属性
    var height = 0
}

class VideoMode {                   //VideoMode的类
    var resolution = Resolution()   //初始化一个结构体实例
    var interlaced = false          //布尔类型  默认false
    var frameRate = 0.0             //double类型 默认0.0
    var name: String?               //默认为nil的string可选类型
}
//实例化结构体和类
let someResolution = Resolution()   //属性都被初始化为默认值
let someVideoMode = VideoMode()

print(someResolution.width)         //通过点语法访问属性
print(someVideoMode.resolution.height)//访问子属性
someVideoMode.resolution.height = 32    //可以直接为属性和子属性赋值
print(someVideoMode.resolution.height)
print(someResolution.height)        //不会产生影响
//结构体的默认构造器
let initRes = Resolution(width: 64, height: 48) //结构体可设置默认的构造器
print(initRes)

//类没有默认构造器, 需要自定义

//结构体和枚举的值传递都是通过值拷贝
var initRes1 = initRes              //不是索引传递  是值拷贝
print(initRes.width)
print(initRes1.width)
initRes1.width = 32
print(initRes)
print(initRes1)                     //initRes1的改变不会影响initRes的值

//类是引用拷贝 , 拷贝后值得改变会影响原来得值
let videoM1 = VideoMode()
videoM1.name = "VideoM1"
var videoM2 = videoM1
videoM2.name = "VideoM2"

print(videoM1.name!)
print(videoM2.name!)                //属性的值互相影响

// 结构体: 只是用来封装少量简单的数据值;实例被赋值或传递存储的时候需要进行值拷贝,不需要用到继承
// 类: 需要包含复杂的属性方法,能形成一个抽象的事物描述;需要用到继承;需要用到引用拷贝

// 字符串,数组,字典的底层都是通过结构体实现的,所以它们在被赋值的时候都是通过值拷贝,
// 当然了swift在内部会做性能优化,不会是只要赋值就拷贝,只有在必要的时候才会进行值拷贝.

//属性

//存储属性: 只能在雷和结构体中储存常量和变量
struct Location {                   //描述位子的结构体
    var x : Double
    let y : Double
}
var position1 = Location(x: 22.22, y: 33.33)        //实例化结构体为变量
position1.x = 44.44                                 //变量的可变属性可以修改
//position1.y = 55.55                               //变量的不可变属性不可修改

let position2 = Location(x: 12.12, y: 13.13)        //实例化结构体为常量
//position2.x = 33.33                               //常量的变量属性也变成常量

class Address{                                      //描述地址的类
    let city = "Beijing"
    var town: String?
}
let address = Address()                             //类实例化为常量
address.town = "天安门"                              //变量的属性仍然可变
//把一个引用类型赋值给一个常量的时候,仍然可以修改该变量的属性

//延迟加载储存属性的关键词lazy
class Data1 {
    var fileName = "data.plist"
}
class Data2 {
    lazy var data = Data1()                         //使用lazy第一次访问的时候才会创建
}                                                   //lazy只修饰变量, 常量需要初始值
let manager = Data2()                               //此时并没有创建Data1
manager.data                                        //使用时才会创建
// 如果lazy修饰的属性没有被初始化就被多个线程访问,就会被初始化多次

//计算属性:可用于类,结构体,枚举. 不直接存储值,而是提供了一个set和get方法
struct Size {
    var width = 0.0                                 //计算属性必须是变量
    var height: Double {
        get {
            print("get")
            return 10
        }
        set {
            width = 20                              //这里有个默认的newValue 是新赋的值
            print("set")
        }
    }
}

var size1 = Size()
size1.height = 17                                   //调用set方法
print(size1.height)
print(size1.width)                                  //调用get方法

//只读属性: 只有get方法 没有set方法
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width:4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTwo.volume)
//fourByFiveByTwo = 20                                //不能设置新值

//属性观察器.willSet,didSet: 只要为属性设置新值 就会调用属性观察器
class StepCounter {
    var totalSteps: Int = 0 {                       //一定要设置初始值
        willSet {                                   //在新值被设置之前调用
            print(newValue)                         //newValue是默认参数
        }
        didSet (oldSteps) {                         //在新值被设置之后调用
            print(oldSteps)                         //默认参数可以修改
        }
    }                   //willSet会将新的属性值传入newValue参数,didSet会将旧的属性值传入oldSteps
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 23                 //新值newValue = 23, 旧值oldVilue = 0
stepCounter.totalSteps = 5                  //新值newValue = 5, 旧值oldVilue = 23

//类型属性

// 实例属性: 每创建一个实例,该实例都会拥有一套属于自己的值,实例之间的属性相互独立
// 类型属性: 为类型定义属性时,无论创建多少个该类型的示例,该属性都只有唯一一份


struct someStruct {
    static var typeProperty = "Value"
}

class someClass {
    static var typeProperty = "Value"
    static var computedTypeProperty: Int {
        return 6                            //可以通过闭包返回属性值
    }
}
print(someStruct.typeProperty)              //类属性可以通过其本身来访问
print(someClass.typeProperty)
someClass.typeProperty = "Tom"              //是var类型 可写
print(someClass.typeProperty)
print(someClass.computedTypeProperty)


//方法: 完成某些特性功能的函数
//方法分为需要通过创建实例调用的实例方法和直接可以通过类型名调用的类型方法,结构体.类.枚举中都能定义方法

//实例方法: 提供访问和修改属性的方法
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amout: Int)  {
        count += amout
    }
    func reset() {
        count = 0
    }
}
let counter = Counter()
counter.increment()
print(counter.count)
counter.incrementBy(amout: 4)
print(counter.count)
counter.reset()
print(counter.count)

//结构体和枚举不是引用类型,是值类型,值类型的属性不能直接在实例方法中修改
struct Piont1 {
    var x = 0.0, y = 0.0
    mutating func movedByX(deltaX: Double, y deltaY: Double){
        x += deltaX                         //mutating关键字可以从方法内部改变结构体的属性
        y += deltaY
    }
}
var somePoint = Piont1(x: 1.0, y: 1.0)      //变量类型
somePoint.movedByX(deltaX: 5.0, y: 5.0)     //这里是修改了点,  而不是返回了新的点
print(somePoint)

let somePoint1 = Piont1(x :2.0, y :2.0)
//somePoint1.movedByX(deltaX: 4.0, y: 4.0)   常量类型结构体的属性不能修改

//self代表自身 在可变犯法中给self赋值
struct NewPoint{
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double){
        self = NewPoint(x: x + deltaX, y: y + deltaY)
    }
}
var someNewPoint = NewPoint(x: 2.0, y: 2.0)
someNewPoint.moveByX(deltaX: 5.0, y: 5.0)
print(someNewPoint)

enum StateSwitch {
    case Off, Low, High
    mutating func next(){
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .High
        case .High:
            self = .Off
        }
    }
}
var ovenLight = StateSwitch.Low
ovenLight.next()
ovenLight.next()

//类方法: 直接通过类本身来调用的方法 可以使类,结构体, 枚举
enum SomeEnum {
    static func printSome() {           //加static关键字  就是类方法
        print("someEnum")
    }
}
SomeEnum.printSome()

struct SomeStruct {
    static func printSome() {
        print("SomeStruct")
    }
}
SomeStruct.printSome()

class Level {
    static var commonLevel = 1          //类属性
    class func addOneLevel() {          //添加class关键字变成类方法, 该方法允许自雷继承
        commonLevel += 1
    }
    
    static func addLevelBy (level: Int) {//添加static关键字变成类方法
        commonLevel += level
    }
    var currentLevel = 1
    func MaxLevel() -> Int {
        if currentLevel >= Level.commonLevel {
            return currentLevel
        }else{
            return Level.commonLevel
        }
    }
}
Level.addOneLevel()
Level.addLevelBy(level: 3)
print(Level.commonLevel)

let player1 = Level()
player1.currentLevel = 2
print(player1.MaxLevel())

let player2 = Level()
player2.currentLevel = 6
print(player2.MaxLevel())


//下标: 定义在类.结构体.枚举中,可以快速访问集合列表序列
//subscript(index: Int) -> Int {            下标语法, subscript(参数名: 参数类型) -> 返回值
//    get {                                 语法类似于实例方法和计算属性语法的混合
//        
//    }
//    set {
//        
//    }
//}

//只读下标的实现
struct TimeTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index           //省略 set 下标定义为只读
    }
}
let threeTimesTable = TimeTable(multiplier: 3)
print(threeTimesTable[6])

//下标的用法
struct Matrix {
    var rows: Int, columns: Int
    subscript(row: Int, column: Int) -> Int {
        get {
           return rows + columns
        }
        set {
            rows += newValue
            columns += newValue
            
            rows += row
            columns += column
        }
    }
}
var matrix = Matrix(rows: 2, columns: 3)
matrix[2, 2] = 8
print(matrix.columns)
print(matrix.rows)


//继承: 一个类可以继承另一个类的方法,属性, 及其他特征
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        get {
            return "\(currentSpeed)公里/每小时"
        }
    }
    func makeNoise() {
        
    }
}
let someVehicle = Vehicle()
print("速度:\(someVehicle.description)")

class Bicycle: Vehicle {
    var hasTwoWheels = true
}
let bicycle = Bicycle()
bicycle.hasTwoWheels = false
bicycle.currentSpeed = 15.0
print("描述:\(bicycle.description)")

//子类还可以被其他类继承
class Tandem: Bicycle {
    var canRideByTwoWheels = true
}
let tandem = Tandem()
tandem.canRideByTwoWheels = true
tandem.hasTwoWheels = true
tandem.currentSpeed = 60.0
print("描述:\(tandem.description)")

//重写:子类可以对继承自父类的实例方法,类方法,实例属性,下标进行重写
class Train: Vehicle {
    var passenger = 0
    override var currentSpeed: Double {
        didSet {
            passenger = Int(currentSpeed / 10)
        }
    }
    override func makeNoise() {
        print("呜呜呜呜呜呜呜呜呜呜")
    }
    override var description: String {
        return super.description + ",有\(passenger)个乘客"
    }
}
let train = Train()
train.makeNoise()
print(train.description)
train.currentSpeed = 200
print(train.description)

//final关键字:防止方法 属性 下标被重写 
class Animal {
                                //如果方法 属性 下标不想被重写, 可以在最前面添加关键字 final
    final func run() {
        print("Running!")
    }
}
final class Dog: Animal {       //在类前面添加final, 此类不可悲继承
//    override func run() {}       run方法不可被重写
}


//构造过程: 通过自定义构造器对类 结构体 枚举的实例进行初始化操作 
struct Weather {
    var temperature: Double
    init() {                    //无参数构造器
        temperature = 26.0
    }
}
var w = Weather()
print(w.temperature)

//自定义构造过程
struct Point {
    var x = 2.0, y = 4.0
    let z: Double
    init(fromPointX pointX: Double, _ pointY: Double) {
        x += pointX
        y += pointY
        z = pointX              //常量被赋值后  不可更改
    }                           //如果没有提供外部名称,swift会自动生成一个和内部名称相同的外部名
}
let point = Point(fromPointX:3.0,3.0)
print(point)

//默认构造器: 如果结构体和类的所有属性都有默认值,同时没有自定义构造器,swift会提供一个默认构造器
class List {
    var name: String?
    var quantity = 1
    var purchased = false
}
let item = List()
print("\(item.name) \(item.quantity) \(item.purchased)")

struct Size2 {
    var width = 0.0, height = 0.0
}
var size11 = Size2(width:3.0, height: 4.0)

//值类型的构造代理:构造器调用其他构造器来完成部分实例化
struct RectSize {
    var width = 0.0, height = 0.0
}
struct RectPoint {
    var x = 0.0,    y = 0.0
}

struct Rect {
    var origin = RectPoint()
    var size = RectSize()
    init() {}
    init(origin: RectPoint, size: RectSize) {
        self.size   = size
        self.origin = origin
    }
    init(center: RectPoint, size: RectSize) {
        let y = center.y - (size.width / 2), x = center.x - (size.height / 2)
        self.init(origin: RectPoint(x: x, y: y), size: size)
    }
}
let basicRect = Rect()
let originRect = Rect(origin: RectPoint(x: 2.0, y: 2.0),size: RectSize(width: 2.0, height: 2.0))
let centerRect = Rect(center: RectPoint(x: 6.0, y: 6.0), size: RectSize(width: 2.0, height: 2.0))

//类的构造: 类的所有属性包括继承父类的都必须在构造过程中设置初始值.类有两种构造器指定构造器和遍历构造器
/*
init(参数) {                            // 指定构造器语法,初始化类中提供的所有属性,
    // 初始语句                         // 会调用父类构造器来实现父类的初始化,
}                                      // 所有类都必须拥有父类构造器,但也能通过继承获得.

convenience init(参数) {                // 便利构造器语法,init前加关键字convenience
    // 初始语句                         // 比较次要的,一般用来使类的构造过程更清晰明了
}
*/
// 子类的指定构造器会调用父类的指定构造器,便利构造器必须调用该类的指定构造器

//构造器的继承和重写
class Vehicle11 {
    var whells = 1
    var description: String {
        return "有\(whells)个轮子"
    }
}
let veh = Vehicle11()
print(veh.description)

class Bicycle1: Vehicle11 {
    override init() {
        super.init()
        whells = 2
    }
}
let bic1 = Bicycle1()
print(bic1.description)

//指定构造器和遍历构造器的实践

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {             //遍历构造器 关键字 convenience
        self.init(name: "名字未知")
    }
}
let nameMeat = Food(name: "Becon")
print(nameMeat.name)
let unnownMeat = Food()             //会调用没有参数的遍历构造器
print(unnownMeat.name)

class Recepe: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let recepe1 = Recepe()
print(recepe1.name, recepe1.quantity)
let recepe2 = Recepe(name: "Beef")
print(recepe2.name, recepe2.quantity)
let recepe3 = Recepe(name: "Egg", quantity: 3)
print(recepe3.name, recepe3.quantity)

//可失败构造器:类,结构体或枚举在定义的时候有可能会失败,可以定义可失败构造器
struct Animal1 {
    let species: String
    init?(species: String) {        //失败构造器
        if species.isEmpty {        //语法:init?(参数) {}
            return nil
        }
        self.species = species
    }
}
let cat = Animal1(species: "Cat")
print(cat!)
let someAnimal = Animal1(species: "")
print(someAnimal as Any)

enum Unit {
    case Alex, Bill, Carle
    init?(char: Character) {
        switch char {
        case "A":
            self = .Alex
        case "B":
            self = .Bill
        case "C":
            self = .Carle
        default:
            return nil
        }
    }
}
let unit1 = Unit(char: "B")
let unit2 = Unit(char: "D")

//必要构造器: 子类必须实现的构造器
class SomeClass1 {
    required init() {           //添加required修饰符表示该类的子类都必须实现该构造器
        
    }
}
class SubClass: SomeClass1 {    //此时重写父类的指定构造器时,就不需要添加override修饰符
    required init() {           //子类也需要添加required,来应用于当前类的子类
        
    }
}

//通过闭包或函数设置属性的默认值
class OtherClass {
    let someProperty: String = {
        return "someValue"      //返回值得类型要和String一致
    }()                         //后面加()表示立即执行此闭包,不加就相当于把闭包本身赋值给属性
}
let oClass = OtherClass()
print(oClass.someProperty)


// 析构过程: 当一个实例不再需要的时候,swift通过自动引用计数去自动清理内存的过程
// 析构器: 析构器只适用于类类型,类实例被释放前会自动调用析构器,析构器用关键字deinit来标识

class SomeClass2 {
    deinit {                    //析构器只能定义在类中,且只能一个
                                //子类继承的父类,也就继承了父类的析构器
    }                           //deinit相当于OC的dealloc
}

//析构器实践
class DeinitText {
    deinit {
        print("deinit")
    }
}
var test: DeinitText? = DeinitText()    //定义一个可选类型,为了置为nil释放内存
test = nil                              //deinit, 实例没有引用,内存回收,调用deinit方法


//引用计数器: ARC(Auto Reference Counteting)自动引用计数:swift会通过ARC来自动管理内存.当类的实例不再被使用的时候,会自动释放其占用的内存 
// 类和结构体是值类型,而引用计数只能应用于引用类型,比如说类

// 自动引用的工作机制:为了保证实例在使用的过程中不被销毁,ARC会自动计算一个实例被引用的次数,
// 只要引用次数不等于0,该实例都不会被销毁

class Person1 {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name)正在初始化")
    }
    deinit {
        print("\(name)即将被销毁")
    }
}
var person11: Person1? = Person1(name: "Tom") //初始化
var person12: Person1? = person11
//var person13: Person1? 

person11 = nil
person12 = nil                                //这里才会销毁

//类实例之间的循环引用: 俩个实例互相持有对方的强引用
class People {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
}
class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    var tenant: People?
    deinit {
        print("\(unit)被销毁")
    }
}
var people1: People? = People(name: "Dariet")
var apartment1: Apartment? = Apartment(unit: "4A")

people1?.apartment = apartment1
apartment1?.tenant = people1            //俩则互相引用

people1 = nil
apartment1 = nil                        //实例并没有销毁

//解决循环引用的3种方法

// 实例之间的循环强引用的解决办法:弱引用和无主引用.
// 对于在生命周期会变为nil的实例使用弱引用,
// 对于初始化后不能被赋值为nil的实例,使用无主引用.

//弱引用:在声明属性前面加关键字weak
class OtherPeople {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: OtherApartment?
    
}
class OtherApartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    weak var tenant: OtherPeople?       //加weak关键字,表示该变量为弱引用
    deinit {
        print("\(unit)被销毁")
    }
}
var otherPeople: OtherPeople? = OtherPeople(name: "Dariel")
var otherApartment: OtherApartment? = OtherApartment(unit: "4A")

otherApartment?.tenant = otherPeople    //tenant是弱引用
otherPeople?.apartment = otherApartment
otherApartment = nil
otherPeople = nil                       //实例被销毁

//无主引用: 在声明属性前加关键字unowed
class Dogg {
    let name: String
    var food: Foodd?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name)被销毁")
    }
}
class Foodd {
    let number: Int
    unowned var owner: Dogg
    init(number: Int, owner: Dogg) {
        self.number = number
        self.owner = owner
    }
    deinit {
        print("食物被销毁")
    }
}
var dogg1: Dogg? = Dogg(name: "旺财")
dogg1?.food = Foodd(number: 6, owner: dogg1!)   // dog强引用food,而food对dog是无主引用
dogg1 = nil

// 如果互相引用的两个属性都为可选类型,也就是可以为nil,比较适合用弱引用来解决.如果两个互相引用的属性,
// 只有一个类的属性为可选类型,那么适合用无主引用来解决.那么,如果两个属性都不能是可选类型呢?
// 一个类使用无主属性,另一个类使用隐式解析可选属性.

class Country {
    let name: String
    // City后加!为隐式解析可选属性,类似可选类型,capitalCity属性的默认值为nil
    var capitalCity: City!                      //初始化完成后可以当非可选类型使用
    init(name: String,capitalName: String ) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
    deinit {
        print("county被销毁")
    }
}
class City {
    let name: String
    unowned let country :Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    deinit {
        print("City实例被销毁")
    }
}
var country: Country? = Country(name: "China", capitalName: "Guangzhou")
print(country!.name)
print(country!.capitalCity.name)
country = nil                               //同事被销毁

//闭包也是引用类型,也会引起循环引用
class Elment {
    let name: String
    let text: String?
    lazy var group: () -> String = {            //没有参数, 返回string类型的函数
        [unowned self] in                       //定义捕获列表,将self变为无主引用
        if let text = self.text {               //解包
            return "\(self.name), \(text)"
        }else{
            return "\(self.name)"
        }
    }
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    deinit {
        print("\(name)被销毁")
    }
}
var element1: Elment? = Elment(name: "Jack", text: "Hallo")
print(element1!.group())                        //闭包与实例相互引用
element1 = nil                                  //self为无主引用, 实例可以被销毁


//可选链式调用: 通过点语法调用属性,方法,和下标

// 可选链式调用可以在当前值为nil的情况下调用属性,方法,下标方法.如果可选值有值,那么调用成功,
// 如果没有值,那么调用失败.也可以是多个调用连接在一起,如果其中有一个节点为nil,整个调用链都
// 会调用失败,返回nil

class Home {
    var numberOfRooms = 1
}
class Person13 {
    var home: Home?
}

let p13 = Person13()
//let roomCount = p13.home!.numberOfRooms       不能使用 ! 强制解包
if let roomCount = p13.home?.numberOfRooms {    //使用 ? 代替 !
    print(roomCount)                            //就可以在p13.home为空的情况下访问后面的属性
}else{
    print("roomCount为nil")
}
p13.home = Home()                               //p13不为空
if let roomCount = p13.home?.numberOfRooms {    //返回一个可选类型
    print(roomCount)
}else{
    print("roomCount = nil")
}

//为可选链式调用定义模型类
//通过可选链式可以调用多层属性,方法和下标,并且能够判断这些子属性,方法或下标是否可以访问.
//下面定义了四个模型类

class Peoplee {
    var residence: Residence?
}
class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}
class Addresss {
    var buildingName: String?
    var buildingNamber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        }else if buildingNamber != nil && street != nil {
            return "\(buildingNamber) \(street)"
        }else{
            return nil
        }
    }
}
class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count              //返回rooms的个数
    }
    var address: Addresss?
    subscript (i: Int) -> Room {        //通过下标访问rooms中指定位置的元素
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {         //打印room数的方法
        print(numberOfRooms)
    }
    
}

//通过可选链式访问属性
let jone = Peoplee()
if let roomCount = jone.residence?.numberOfRooms {
    print(roomCount)
}else{
    print("jone.residence = nil")       //为空则调用失败
}
let someAddress = Addresss()
someAddress.buildingNamber = "22"
someAddress.street = "Acicia Road"
jone.residence?.address = someAddress   //属性设置失败,因为jone.residence = nil

//通过可选链式调用方法
if let identifier = jone.residence?.address?.buildingIdentifier() {
    print(identifier)                   //identifier = nil  此处不会执行
}
jone.residence = Residence()
jone.residence?.address = someAddress
if let identifier = jone.residence?.address?.buildingIdentifier() {
    print(identifier)
}

//通过可选链式访问下标
jone.residence?.rooms = [Room(name: "Tom"), Room(name: "Jack")]
if let firseRoomName = jone.residence?[0].name {
    print(firseRoomName)
}

//多层可选链式调用
// 通过可选链式调用非可选类型,将会返回一个可选类型,通过可选链式调用可选类型,返回的依然还是可选类型
if let joneStreet = jone.residence?.address?.street {
    print(joneStreet)
}

//在方法的可选返回值上进行可选链式调用
// 直接在方法的返回值上进行可选链式调用,只要加一个问号(?)
if let beginWithThe = jone.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    print(beginWithThe)
}


//错误处理: swift在运行时能够对错误进行处理并给出相应的操作 

// 处理错误的几种方式:  1. 把错误传递给调用函数,然后使用do-catch语句处理错误
//                   2. 将错误作为可选类型处理
//                   3. 使用断言处理

//定义错误类型
enum CustomErrorType: Error {
    case errorReason1
    case errorReason2
    case errorReason3
}

//通过throwing函数传递错误
class ThrowClass {
    var num: Int?                               //根据num值抛出异常
    func throwFunc() throws {                   //如果有返回值,throw需要写在(->)前面
        guard num == 1 else {                   //当num != 1 执行throw 抛出异常
            throw CustomErrorType.errorReason1  //异常会传递到函数被调用的作用域
        }                                       //throw语句会立刻退出当前方法, 相当于return
        guard num == 2 else {
            throw CustomErrorType.errorReason2
        }
        guard num == 3 else {
            throw CustomErrorType.errorReason3
        }
    }
}

//通过Do-Catch处理throwing函数传递的错误 
let throwClass = ThrowClass()
throwClass.num = 4

do {
    try throwClass.throwFunc()
}catch CustomErrorType.errorReason1 {           //根据返回错误类型  执行{}
    print("错误1")
}catch CustomErrorType.errorReason2 {
    print("错误2")
}catch {                                        //没有指定类型 可以匹配任何错误
    print("错误3")
}

//将错误转换成可选值
func someThrowwingFunc (num: Int) throws -> Int {
    defer {
        print("defer语句会在return,break,以及错误抛出之前执行")
    }
    defer {
        print("defer语句可以有多个,注意多个之间的执行顺序")
    }
    guard num == 3 else {
        throw CustomErrorType.errorReason1
    }
    return num
}
let xx = try? someThrowwingFunc(num: 3)
print(xx as Any)

let yy: Int?
do {
    yy = try someThrowwingFunc(num: 2)
}catch CustomErrorType.errorReason1 {
    print("错误1")
}
if let dataValue = try? someThrowwingFunc(num: 2) {
    print(dataValue)
}else{
    print("dataValue为nil")
}

//禁用错误传递:如果觉得这个地方肯定不会有错误抛出,可以禁用错误传递
let forbiddenX = try! someThrowwingFunc(num: 3)     //try?变为try!

//defer语句:在异常抛出前,通常需要做一些操作,比如关闭文件,手动释放内存等,这些就可以在defer语句中执行
// defer语句会在return,break,以及错误抛出之前执行
// defer语句可以有多个
// defer语句必须要在throw语句前面才能执行

//使用断言:如果当前值缺失,或者不满足特定条件,可以使用断言使程序崩溃,并在控制台输出原因
var agge = 3
assert(agge > 0, "这个年龄不符合逻辑")       //格式:assert(布尔表达式,"控制台输出内容")
agge = -5
//assert(agge > 0, "这个年龄不符合逻辑")       //程序奔溃, 布尔表达式为false时,使程序崩溃并输出内容


//类型嵌套: 可以在允许类型嵌套的类型中嵌套枚举 类 结构体,并且支持多层嵌套

//值类型的嵌套
struct NestedStruct {
    enum enumType1: Character {             //在结构体中嵌套枚举
        case enumValue1 = "A", enumValue2 = "B", enumValue3 = "C"
    }
    enum enumType2: Int {
        case two = 2, three, four
        struct Values {                     //在枚举中嵌套结构体
            enum num: Int {                 //结构体中再嵌套枚举
                case num1 = 1, num2, num3
            }
        }
    }
}
//枚举和结构体都是值类型, 直接通过类型名称调用
print(NestedStruct.enumType1.enumValue2.rawValue)
print(NestedStruct.enumType2.Values.num.num2.rawValue)

//引用类型嵌套
class ClassType1 {                          //类是引用类型
    class ClassType2 {
        func hello() -> String {
            return "Hallo"
        }
    }
    enum enumType2: Int {                   //引用类型中嵌套值类型
        case two = 2, three, four
        struct Values {                     //枚举中嵌套结构体
            enum num: Int {                 //结构体中再嵌套枚举
                case num1 = 1, num2, num3
            }
        }
    }
}
let someClass1 = ClassType1.ClassType2()
print(someClass1.hello())
print(ClassType1.enumType2.Values.num.num1.rawValue)


//扩展: 可以为已有的类 结构体 枚举或者协议类型添加新功能,类似OC的分类

// swift中可以扩展的功能:  1. 为已有类型扩展计算型实例属性和计算型类型属性
//                      2. 为已有类型添加新的便利构造器
//                      3. 为已有类型添加新的实例方法和类型方法
//                      4. 为已有类型添加新下标
//                      5. 为已有的类 结构体 枚举添加新的嵌套类型

//class SsomeClass {
//    
//}
//extension SsomeClass: someProtocoll {}  在类名前面添加extension关键字,冒号后面写协议名

//用扩展为已有类型添加计算型实例属性和计算型类型属性

extension Double {
    var m: Double {return self}
    var cm: Double {return self/100.0}
    var mm: Double {return self/1000.0} //扩展不能添加存储属性和属性观察器
}
let oneMeter = 100.cm
let centimeterMeter = 10.mm
print("100cm = \(oneMeter)米, 10mm = \(centimeterMeter)米")

//扩展可以为已有类型添加新的便利构造器,但不能添加新的指定构造器和析构器
struct Ssize {
    var width = 0.0, height = 0.0
}
struct Ppoint {
    var x = 0.0, y = 0.0
}
struct Rrect {
    var origin = Ppoint()
    var size = Ssize()
}
let rect1 = Rrect()
//通过逐一构造器和默认构造器为实例赋值
let rect2 = Rrect(origin: Ppoint(x: 2.0, y: 2.0), size: Ssize(width: 3.0, height: 3.0))

// 如果使用构造器为值类型添加构造器时,该值类型原始实现中未定义任何定制的构造器且所有存储属性提供了默认值,
// 这时就可以在扩展中的构造器里调用默认构造器和逐一成员构造器.

extension Rrect {
    init(center: Ppoint, size: Ssize) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Ppoint(x: originX, y: originY), size: size)
    }
}
let centerRrect = Rrect(center: Ppoint(x: 4.0, y: 4.0), size: Ssize(width: 3.0, height: 3.0))
print(centerRrect.origin)

//通过扩展可以为已有类型添加新的实例方法和类型方法
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}
4.repetitions {
    print("Four")
}

extension Int {         //通过扩展实例方法修改实例本身
    // 结构体和枚举是值类型,所以在改变实例本身的时候需要在方法前面加mutating关键字
    mutating func square() {
        self *= self
    }
}
var someInt = 3
someInt.square()

//扩展可以为已有类型添加新下标
extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}
print(3476367245786[3])

//可以为已有的类 结构体 枚举添加新的嵌套类型 
extension Int {
    enum Kind {
        case Negative, Zero, Positive       //kind的三种类型 负数, 0, 正数
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
    
}
func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .Negative:
            print("负数")
        case .Zero:
            print("零")
        default:
            print("正数")
        }
    }
    print("")                               //换行
}
printIntegerKinds(numbers: [12, -4, 0, 32, -74, 2, 0, 12])


//协议: 定义一个规则去实现特定功能. 类 结构体 枚举都可以遵守这个协议,并为这个协议的规则提供具体实现
protocol SomeProtocol {                     //定义协议
    
}
struct SomeTtructure: SomeProtocol {        //遵守协议
    
}
class Ssomeclass: NSObject, SomeProtocol {  //需要把父类协议放到协议的前面
    
}

//在协议中定义属性: 协议中的属性可以是实例属性也可以是类型属性,协议中的属性只能指定名称和类型以及可读可写
protocol SomeProtocol2 {
    var mustBeSettable: Int {get set}       //加get和set 表示可读写
    var onlyRead: Int {get}                 //只读
    static var someTypeProperty: Int {get set} // 类属性 加static
}
protocol FullyNamed {
    var fullName: String {get}
}
struct Persin: FullyNamed {
    var name: String
    
    var fullName: String {
        return "Barack Hussein \(name)"
    }
}
let obama = Persin(name: "Obama")
print(obama.fullName)

//在协议中定义方法: 协议可以要求实现某些指定的实例方法和类方法,定义的方式和普通方法相同,但不需要大括号和方法体
protocol SomeProtocol3 {
    static func someTypeMethod()            // 定义类方法的时候用static作前缀
}
protocol RandomNum {
    func random() -> Int
}
class RandomNumGenerator: RandomNum
{
    func random() -> Int {
        return Int(arc4random() % 10)
    }
}
let randomNum = RandomNumGenerator()
print(randomNum.random())

//Mutating关键字在协议中的应用: 在结构体和枚举即值类型的实例方法中,不能直接修改其实例属性,需要在其方法前面加mutating关键字
protocol toggleProtocol {
    mutating func toggle()
}

enum Toggle: toggleProtocol {
    case Off, On
    mutating func toggle() {
        switch self {
        case .Off:
            self = .On
        case .On:
            self = .Off
        }
    }
}
var lightSwitch = Toggle.Off
lightSwitch.toggle()                        //置反
print(lightSwitch == .On)

//在协议中自定义构造器:写下构造器声明, 但不需要写花括号和构造器实体
protocol SomeProtoco4 {
    init(someParmetes: Int)
}
class SomeInitClass: SomeProtoco4 {
    //遵守协议的构造器都必须在前面带required修饰符,来确保所有子类都要实现此构造器
    required init(someParmetes: Int) {
        //实现部分
    }
}

// 协议作为类型使用: 可以作为函数 方法或构造器中的参数类型或返回值类型,作为常量变量或属性的类型,作数组字典或其他容器中元素的类型
class Dice {
    let generator: RandomNum                //定义一个骰子
    init(generator: RandomNum) {            //协议类型的储存属性
        self.generator = generator
    }
    func roll() -> Int {                    //产生一个随机数
        return generator.random()
    }
}
class RandomNumGenerator1: RandomNum {      //定义一个类遵守改协议
    func random() -> Int {
        return Int(arc4random() % 10)
    }
}
var d6 = Dice(generator: RandomNumGenerator1()) //将遵守该协议的类当做参数
print(d6.roll())                            //随机数

// 代理设计模式: 可以将类或结构体的一些功能委托给其他类型去实现.代理可以用来响应事件,或接收外部数据源数据
protocol BabyDelegate {
    func feedBaby(baby: Baby)               //代理中有个喂食的方法
}
class Baby {
    var needNumFood: Int?                   //需要的食物数量
    var babyDelegate: BabyDelegate?         //代理属性
    func eat () {                           //吃
        babyDelegate?.feedBaby(baby: self)  //调用代理
    }
}
class Nanny: BabyDelegate {
    func feedBaby(baby: Baby) {
       baby.needNumFood = 10
        print("喂baby食物:\(baby.needNumFood)")
    }
}
let baby = Baby()
let nanny = Nanny()

baby.babyDelegate = nanny                   //将baby委托给nanny
baby.eat()                                  //baby调用吃的方法委托nanny喂食物

// 在extension中实现协议
protocol SomeProtoco5 {
    //协议
}
extension Nanny: SomeProtoco5 {             // 在扩展中遵守协议的效果和在原始类中一样
    // 在实际开发中实现协议的时候推荐这样做,有利于提高代码的阅读性
}

//通过扩展遵守协议: 当一个类实现了协议中的方法,却还没有遵守该协议时,可以通过空扩展体来遵守该协议





























