# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-09-27 17:15
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('crm', '0034_tgqudaoname'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='tgqudaoname',
            options={'verbose_name': '推广常用渠道', 'verbose_name_plural': '推广常用渠道'},
        ),
        migrations.AlterModelTable(
            name='tgqudaoname',
            table='rzjf_tg_qudao_name',
        ),
    ]
