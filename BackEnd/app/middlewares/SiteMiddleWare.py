from app.controllers.SiteController import SiteController

class SiteMiddleWare:
    def __init__(self):
        pass

    def index(self):
        return SiteController().index()
