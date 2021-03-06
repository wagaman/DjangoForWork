"""RzAdmin URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from daily import views

urlpatterns = [
    url(r'^data_storage/$', views.DataStorage.as_view()),  # 获取公司数据库信息
    url(r'^get_wdzj_info/$', views.get_wdzj_info),  # 爬取网贷之家数据信息
    url(r'^get_wdty_info/$', views.get_wdty_info),  # 爬取网贷天眼数据信息
    url(r'^rzjf_recorde/$', views.rzjf_recorde),  # 用于定时存储人众金服业务所产生的一些记录
    url(r'^rzjf_invest_rank/$', views.rzjf_invest_rank),  # 存储投资次数
]
