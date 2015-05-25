# 軟體建構解決方案/<br />Build solutions/
## 本專案支援的軟體建構解決方案<br>Build solutions supported by this project
### [傳統批次命令/<br />Traditional batch commands/](Traditional batch commands/)（尚未實作完成）
### [CMake 建構系統/<br />CMake buildsystem](CMake buildsystem/)
### [GNU Make 軟體建構系統/<br />GNU Make buildsystem/](GNU Make buildsystem/)（尚未實作完成）
### [Code::Blocks 整合式開發環境/<br />Code::Blocks IDE/](Code__Blocks IDE/)
### [Eclipse CDT 整合式開發環境/<br />Eclipse CDT IDE/](Eclipse CDT IDE/)
### [Geany 整合式開發環境/<br />Geany IDE/](Geany IDE/)（尚未實作完成）
### [CodeLite 整合式開發環境/<br />CodeLite IDE/](CodeLite IDE/)（尚未實作完成）
### [Eclipse JDT 整合式開發環境/<br />Eclipse JDT IDE/](Eclipse JDT IDE/)

## 軟體建構依賴關係<br />Software build dependency
本專案需要下列軟體以便建構：

### 適用於 C/C++ 語言專案
* 標準 C/C++ 函式庫
* 一個夠近期的，符合 C89 規範的 C/C++ 工具鍊(toolchain)
* [Ｖ字龍的C、C++程式語言函式庫收集<br />Vdragons C CPP Libraries Collection](https://github.com/Vdragon/Vdragons_C_CPP_Libraries_Collection)
	* VCCL_showSoftwareInfo
	* VCCL_printSomething
	* VCCL_Error_C
	* VCCL_pauseProgram 
	* 請將函式庫、函式庫標頭檔(library headers)安裝到系統預設搜索目錄，或是放在 [../Libraries/](../Libraries/) 、[../Library headers/](../Library headers/) 目錄中再進行軟體建構。

### 適用於 Java 程式語言專案
* 一個夠近期的 Java Development Kit(JDK)