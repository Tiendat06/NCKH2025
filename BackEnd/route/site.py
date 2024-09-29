from flask import Blueprint;
from app.middlewares.SiteMiddleWare import SiteMiddleWare

site = Blueprint('site', __name__)


@site.route('/', methods=['GET'])
def index():
    return SiteMiddleWare().index()
