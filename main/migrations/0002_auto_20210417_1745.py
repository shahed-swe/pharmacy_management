# Generated by Django 3.1.7 on 2021-04-17 11:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='user_address',
            field=models.TextField(blank=True, max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='saveseller',
            name='user_address',
            field=models.TextField(blank=True, max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='seller',
            name='user_address',
            field=models.TextField(blank=True, max_length=200, null=True),
        ),
    ]
