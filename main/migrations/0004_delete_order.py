# Generated by Django 3.1.7 on 2021-04-19 10:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_saveseller_email'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Order',
        ),
    ]