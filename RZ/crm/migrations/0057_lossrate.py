# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2018-01-25 18:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crm', '0056_recasting'),
    ]

    operations = [
        migrations.CreateModel(
            name='LossRate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('qdate', models.DateField(db_index=True, verbose_name='日期')),
                ('kefuname', models.CharField(max_length=64, null=True, verbose_name='客服姓名')),
                ('loss_num', models.IntegerField(null=True, verbose_name='流失用户')),
                ('exist_num', models.IntegerField(null=True, verbose_name='在投用户')),
                ('day_invest', models.DecimalField(decimal_places=2, max_digits=20, null=True, verbose_name='当日投资金额')),
                ('month_withdraw', models.DecimalField(decimal_places=2, max_digits=20, null=True, verbose_name='当月提现金额')),
                ('month_invest', models.DecimalField(decimal_places=2, max_digits=20, null=True, verbose_name='当月投资金额')),
                ('recall_num', models.IntegerField(null=True, verbose_name='当月召回人数')),
            ],
            options={
                'verbose_name': 'VIP客服流失率数据',
                'verbose_name_plural': 'VIP客服流失率数据',
                'db_table': 'rzjf_loss_rate',
            },
        ),
    ]