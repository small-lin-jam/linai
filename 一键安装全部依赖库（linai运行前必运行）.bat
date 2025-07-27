@echo off
setlocal enabledelayedexpansion

:: 设置国内镜像源
set PIP_MIRROR=https://pypi.tuna.tsinghua.edu.cn/simple

md .\bert-base-uncased

:: 安装Python依赖
pip install torch torchvision -i %PIP_MIRROR%
pip install easyocr Pillow -i %PIP_MIRROR%
pip install requests beautifulsoup4 pytesseract -i %PIP_MIRROR%
pip install protobuf -i %PIP_MIRROR%

:: 安装Tesseract OCR引擎
echo 正在安装Tesseract OCR引擎...
if exist "C:\Program Files\Tesseract-OCR\tesseract.exe" (
    echo Tesseract OCR已安装
) else (
    echo 请手动下载并安装Tesseract OCR：
    echo https://github.com/UB-Mannheim/tesseract/wiki
    echo 安装时请勾选"添加到系统PATH"选项
    pause
)

endlocal