# Generated by Django 4.1 on 2025-01-31 09:27

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Team',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('avatar', models.ImageField(help_text='最佳尺寸1920*1280', upload_to='team', verbose_name='头像')),
                ('name', models.CharField(max_length=100, verbose_name='姓名')),
                ('title', models.CharField(max_length=100, verbose_name='职务')),
                ('rank', models.IntegerField(verbose_name='排序')),
            ],
            options={
                'verbose_name': '团队管理',
                'verbose_name_plural': '团队管理',
                'db_table': 'team',
            },
        ),
    ]
