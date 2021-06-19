# ISUCON TOOLS

ISUCONのセットアップスクリプト置き場．

## Get Script

require: wget

```bash
wget https://raw.githubusercontent.com/bean1310/isucon-scripts/main/src/setup.sh && \
chmod +x setup.sh && \
./setup.sh
```

## 内容物

```
├── README.md: このファイル
├── centos.sh: CentOS環境検証のためのDocker起動スクリプト
├── src
│   └── setup.sh: 自動セットアップスクリプト
└── ubuntu.sh: Ubuntu環境検証のためのDocker起動スクリプト
```

## 注意

勉強中なので何が必要なのかあんま分かってないので，
このリポジトリを参考にしないように．
