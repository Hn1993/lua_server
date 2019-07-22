from flask import Flask,send_from_directory
from flask import request
import json
import os
import re

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/uploadFile/qiji_mu',methods=['POST'])
def upload_file():
    ''' 文件上传类 '''
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
    ''' 文件下载 '''
    #dirpath = os.path.join(app.root_path, 'qiji_mu')
    dirpath = os.getcwd()+"/qiji_mu"
    file_name = request.args.get('file_name')
    if not os.listdir("qiji_mu"):
        return '文件夹为空'
    else:
        return send_from_directory( dirpath,file_name, as_attachment=True)

@app.route('/getVersion',methods=['GET'])
def get_version():
    version_name = request.args.get('version_name')
    dic = json.loads(readFile())
    return dic[version_name]


def saveFile(filename,content):
    file = open(filename, "w")
    file.write(content)
    file.close()

def readFile():
    file = open('version/version.txt','r+')
    content = file.read()
    file.close()
    return content

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=82,debug=True)
