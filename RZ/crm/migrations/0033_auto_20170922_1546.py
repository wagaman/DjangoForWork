# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-09-22 15:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crm', '0032_auto_20170922_0952'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='avatar',
            field=models.ImageField(default='img/default.png', null=True, upload_to='img', verbose_name='头像'),
        ),
    ]
