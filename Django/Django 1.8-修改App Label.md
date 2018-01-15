
### 修改App Label
在项目的.init文件中,加入如下代码
```
# _*_ coding: utf-8 _*_
from django.apps import AppConfig
import os

# default_app_config = 'primary_blog.PrimaryBlogConfig'

VERBOSE_APP_NAME = u"Jimmy的auth"


def get_current_app_name(_file):
    return os.path.split(os.path.dirname(_file))[-1]


class AppVerboseNameConfig(AppConfig):
    name = get_current_app_name(__file__)
    verbose_name = VERBOSE_APP_NAME


default_app_config = get_current_app_name(__file__) + '.__init__.AppVerboseNameConfig'
```
