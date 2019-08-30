from flask import Flask,send_from_directory
from flask import request
import json
import os
import re
import jpush as jpush

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/uploadFile/qiji_mu',methods=['POST'])
def upload_file():
    f = request.files['file']
    version = request.form['version']
    if f :
        respone = {'code':0,'msg':'success','data':f.filename}
        f.save('qiji_mu/'+f.filename)
        if not os.path.exists('version/version.txt'):
            version_map = {"qiji_mu_version":version}
        else:
            version_map = json.loads(readFile())
            if version_map :
                version_map = dict()
            version_map['qiji_mu_version'] = version
        saveFile("version/version.txt",json.dumps(version_map, ensure_ascii=False))
    else:
        respone = {'code':-1,'msg':'fail','data':None}
    return json.dumps(respone)

@app.route('/downloadFile/qiji_mu',methods=['GET'])
def download_file():
    #dirpath = os.path.join(app.root_path, 'qiji_mu')
    dirpath = os.getcwd()+"/qiji_mu"
    file_name = request.args.get('file_name')
    if not os.listdir("qiji_mu"):
        return 'file is none'
    else:
        return send_from_directory( dirpath,file_name, as_attachment=True)

@app.route('/getVersion',methods=['GET'])
def get_version():
    version_name = request.args.get('version_name')
    dic = json.loads(readFile())
    return dic[version_name]





@app.route('/downloadApp',methods=['GET'])
def download_app():
    #dirpath = os.path.join(app.root_path, 'qiji_mu')
    dirpath = os.getcwd()+"/qiji_mu"
    file_name = request.args.get('file_name')
    if not os.listdir("qiji_mu"):
        return 'file is none'
    else:
        return send_from_directory( dirpath,file_name, as_attachment=True)

@app.route('/getAppVersion',methods=['GET'])
def get_app_version():
    version_name = request.args.get('app_version')
    dic = json.loads(readAppFile())
    return dic[version_name]

@app.route('/uploadApp',methods=['POST'])
def upload_app():
    f = request.files['file']
    app_version = request.form['app_version']
    if f :
        respone = {'code':0,'msg':'success','data':f.filename}
        f.save('qiji_mu/'+f.filename)
        if not os.path.exists('version/app_version.txt'):
            version_map = {"app_version":app_version}
        else:
            version_map = json.loads(readAppFile())
            if version_map :
                version_map = dict()
            version_map['app_version'] = app_version
        saveFile("version/app_version.txt",json.dumps(version_map, ensure_ascii=False))
    else:
        respone = {'code':-1,'msg':'fail','data':None}
    return json.dumps(respone)


@app.route('/pushMessage',methods=['GET'])
def jpush_push_message():
    content = request.args.get('content')
    # tag = request.form['tag']

    if not content:
        respone = {'msg':"推送内容不能为空"}

    # app_key和master_secret
    app_key = '55cffc05dbe10a02cdd21ef1'
    master_secret = 'd9bd0a5f75014667acb4a311'

    _jpush = jpush.JPush(app_key, master_secret)
    push = _jpush.create_push()
    push.audience = jpush.all_
    # push.notification = jpush.notification(alert=content)
    push.message = jpush.message(msg_content=content)
    push.platform = jpush.all_

    #push.message


    try:
        res = push.send()
        respone = {'code': 0, 'msg': 'success'}
    except Exception:
        respone = {'msg':"推送内容不能为空"}
    return json.dumps(respone)
    #return json.dumps(content)


def saveFile(filename,content):
    file = open(filename, "w")
    file.write(content)
    file.close()

def readFile():
    file = open('version/version.txt','r+')
    content = file.read()
    file.close()
    return content


def readAppFile():
    file = open('version/app_version.txt','r+')
    content = file.read()
    file.close()
    return content

if __name__ == '__main__':
    # app.run(host='0.0.0.0',port=8000,debug=True)
    app.run(host='127.0.0.1',port=82,debug=True)
