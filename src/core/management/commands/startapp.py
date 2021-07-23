from os import path
from typing import Any, Optional

from django.conf import settings
from django.core.management.commands.startapp import Command as BaseCommand


class Command(BaseCommand):
    def handle(self, *args: Any, **options: Any) -> Optional[str]:
        if 'template' not in options or options['template'] is None:
            options['template'] = path.join(settings.PROJECT_DIR,  '.django-app-template')

        super().handle(*args, **options)
