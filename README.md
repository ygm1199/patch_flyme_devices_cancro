1. 介紹
===
`FlymeOS`開源項目致力於為開發人員提供業界一流的ROM適配工具。

二零一五年六月三十日，`FlymeOS`開放適配終於來了，我們相信雖晚未遲。

[![License](https://img.shields.io/badge/License-Apache%20V2.0-blue.svg)](LICENSE)


2. 分支命名
===
開源項目的分支命名與Android版本對應,目前支持**Android 5.0**的機型適配，分支名為：`lollipop-5.0`

目錄結構如下所示: 

    FlymeOS
     +-- manifest           項目清單
     +-- tutorials          教程文檔
     +-- plugins            擴展插件，用於擴展已有功能
     +-- build              編譯環境，用於構建和編譯機型
     +-- tools              適配工具
     +-- flyme              Flyme相關，內容定期更新
          +-- release       官方發布的ROM包
          +-- overlay       資源覆蓋
     +-- devices            機型目錄
          +-- base          官方提供的默認機型
          +-- your_device   待開發人員適配的機型


3. 代碼下載
===

通過repo init命令的-b參數, 選擇需要下載的分支。
通過repo sync命令同步遠程代碼: 

    $ repo init -u https://github.com/FlymeOS/manifest.git -b lollipop-5.0
    $ repo sync

如果連接一直失敗或下載代碼過慢，則使用以下命令:

    $ repo init --repo-url git://github.com/FlymeOS/repo.git \
                -u https://github.com/FlymeOS/manifest.git \
                -b lollipop-5.0 --no-repo-verify
    $ repo sync --no-clone-bundle -c -j4


4. 機型適配
===
<b>* 標準流程</b>

下載完代碼以後, 在開源項目根目錄, 執行以下命令初始化開發環境: 

    $ source build/envsetup.sh

創建一個新的機型工程的目錄(以cancro為例), 後續的移植都在機型目錄完成。

    $ mkdir -p devices/cancro
    $ cd devices/cancro

按照如下步驟，完成一個新機型的適配：

    $ flyme config      # 生成機型配置文件Makefile
    $ flyme newproject  # 生成新機型目錄
    $ flyme patchall    # 自動插樁
    $ flyme fullota     # 生成適配完成的ROM包


<b>* 沖突處理</b>

自動插樁可能會造成代碼合並沖突。沖突會以下面的形式標註出來, 開發人員需要在廠商的文件中手工解決這些沖突。

    <<<<<<< VENDOR
      原廠的代碼塊
    =======
      Flyme的代碼塊
    >>>>>>> BOSP


<b>* 版本升級</b>

可以跟隨官方發布的最新ROM包，將已經是適配完成的機型升級到最新版本：

    $ flyme cleanall
    $ flyme upgrade


5. 貢獻代碼
===

我們鼓勵開發人員為開源社區作出貢獻。利用Github的Pull-Request機制，便可將內容變更發送給Flyme官方審閱。

![image](github-pull-request.png)

- 首先，在github頁面上，點擊“Fork”，將Flyme的git庫拷貝到自己帳號
- 然後，對拷貝的git庫進行修改，將內容變更提交到自己的帳號
- 最後，在github頁面上，點擊"New pull request"，向Flyme官方發起代碼審閱

更多信息交流討論：

- **QQ  :**  49162418
- **BBS :**  <http://bbs.flyme.cn/forum-119-1.html>
