# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2018-03-07 15:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('daily', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserRecoverAccount',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('qdate', models.DateField(db_index=True, verbose_name='日期')),
                ('uid', models.IntegerField(null=True, verbose_name='用户ID')),
                ('recover_account', models.DecimalField(decimal_places=2, max_digits=20, null=True, verbose_name='在贷金额')),
            ],
            options={
                'verbose_name': '每个用户的在贷详情',
                'verbose_name_plural': '每个用户的在贷详情',
            },
        ),
        migrations.AlterUniqueTogether(
            name='userrecoveraccount',
            unique_together=set([('qdate', 'uid')]),
        ),
    ]