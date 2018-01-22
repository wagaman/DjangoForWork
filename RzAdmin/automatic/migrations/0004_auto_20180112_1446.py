# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2018-01-12 14:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('automatic', '0003_auto_20180112_1441'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='sqlusage',
            name='user',
        ),
        migrations.AlterField(
            model_name='sqlrecord',
            name='usage',
            field=models.SmallIntegerField(choices=[(0, '生成查询页面'), (1, '首页展示'), (2, '其他展示')], default=0, verbose_name='SQL记录用途'),
        ),
        migrations.DeleteModel(
            name='SQLUsage',
        ),
    ]