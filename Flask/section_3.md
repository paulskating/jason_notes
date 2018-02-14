### Flask渲染Jinja2模板和传参:
1. 如何渲染模板:
    * 模板放在'templates'文件夹下
    * 从'flask'中导入'render_template'函数
    * 在视图函数中,使用'render_template'函数,渲染模板.注意:只需要填写模板的名字,不需要填写'templates'这个文件夹的路径.
2. 模板传参:
    * 如果只有一个或者少量参数,直接在'render_templates'函数中添加关键字参数就可以了.
    * 如果有多个参数的时候,那么可以先把所有的参数放在字典中,然后再'render_template'中,使用'**',把字典转换成关键参数传递进去,这样的代码更方便管理和使用.
3. 在模板中,如果要使用一个变量,语法是:'{{ params }}'
4. 访问模型中的属性或者是字典,可以通过'{{ params.property }}'的形式,或者是使用'{{ params['age'] }}'.

### 过滤器:
1. 介绍和语法:
    * 介绍: 过滤器可以处理变量,把原始的变量经过处理后再展示出来.作用的对象是变量.
    * 语法:
        ```
        {{ avatar|default('xxx')}}
        ```
2. default过滤器: 如果当前变量不存在或为空,这时候可以指定默认值.
3. length过滤器: 求列表或字符串或者字典或者元祖的长度.
### if判断:
1. 语法:
    ```
    {% if xxx %}
    {% else %}
    {% endif %}
    ```
2. if的使用,可以和Python中相差无几.

### for循环遍历字典:
1. 字典的遍历,语法和Python一样,可以使用'items()','keys()','values()','iteritems()','iterkeys()','itervalues()'
    ```
    {% for k,v in user.items() %}
        <p>{{ k }}: {{ v}}<p>
    {% endfor %}
    ```
2. 列表的遍历:语法和Python一样

### 继承和block:
1. 继承作用和语法:
    * 作用: 可以把一些公共的代码放在父模板中,避免每个模板写同样的代码.
    * 语法:
        ```
        {% extends 'base.html' %}
        ```
2. block实现:
    * 作用: 可以让子模板实现一些自己的需求.父模板需要提前定义好.
    * 注意点: 子模板中的代码,必须放在block块中.

### url链接:
1. 使用'url_for(视图函数名称)'可以反转url.

### 加载静态文件:
1. 语法: 'url_for('static',filename='路径')'
2. 静态文件,flask会从'static'文件夹中开始寻找,所以不需要些'static'这个路径了
3. 可以加载'css'文件,可以加载'js'文件,还有'image'文件.
    ```
    # 第一个:加载css文件
    <link rel="stylesheet" href="{{ url_for('static',filename='css/index.css') }}">
    # 第二个:加载js文件
    <script src="{{ url_for('static',filename='js/index.js') }}"></script>
    # 第三个:加载图片文件
    <img src="{{ url_for('static',filename='images/zhiliao.png') }}" alt="">
    ```




