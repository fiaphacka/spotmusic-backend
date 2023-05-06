import unittest


import pytest


import app
from db import get_songs


class MyTest(unittest.TestCase):

    def test(self):
        with pytest.raises(UnboundLocalError):
            songs = get_songs()



