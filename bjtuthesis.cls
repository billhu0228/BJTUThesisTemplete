%========================================================================%
%               Copyright (C) 2016 All Rights Reserved.                  %
%             Author:BillHu<billhu@icloud.com>  Ver:<1.0>                %
%========================================================================%
%    The author grants permission, without fee and without a written     %
% license agreement, for use, reproduction, modification, and distribu-  %
% tion of this software and its documentation by educational, research,  %
% and non-profit entities for noncommercial purposes only.The above      %
% copyright notice and this paragraph MUST appear in all copies and      %
% modifications of the software and/or documentation.                    %
%========================================================================%
\ProvidesClass{bjtuthesis}[2016/09/10]
\def\version{1.0}
\LoadClass[a4paper,cs4size,twoside,hyperref,openright]{ctexbook}
\NeedsTeXFormat{LaTeX2e}
%========================================================================%
% 基本宏包
%========================================================================%
\RequirePackage{ccaption}
\RequirePackage{mathptmx}
\RequirePackage{changepage}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{tabularx}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{subfig}
\RequirePackage{pgfplots}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{titletoc}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
%========================================================================%
% 北京交大明确给出的格式
%========================================================================%
\geometry{left=3.5cm,right=2.5cm,top=3.0cm,bottom=2.5cm,headheight=1.6cm}
\setmainfont{Times New Roman}
\setlength{\baselineskip}{20pt}
\renewcommand{\captionfont}{\zihao{5}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
\CTEXsetup[name={,}]{chapter}
\CTEXsetup[number={\arabic{chapter}}]{chapter}
\CTEXsetup[beforeskip={24pt}]{chapter}
\CTEXsetup[afterskip={18pt}]{chapter}
\CTEXsetup[nameformat={}]{chapter}
\CTEXsetup[titleformat={}]{chapter}
\CTEXsetup[format=\centering\heiti\zihao{3}]{chapter}
\CTEXsetup[format=\raggedright\heiti\zihao{-3}]{section}
\CTEXsetup[beforeskip={24pt}]{section}
\CTEXsetup[afterskip={18pt}]{section}
\CTEXsetup[format=\raggedright\heiti\zihao{4}]{subsection}
\CTEXsetup[beforeskip={24pt}]{subsection}
\CTEXsetup[afterskip={18pt}]{subsection}
%========================================================================%
\newcommand{\figcaption}[2]{\bicaption{图}{#1}{Fig}{#2}}
%========================================================================%
% 目录格式
%========================================================================%
\contentsmargin{1em}
\titlecontents{part}[0em]{\hspace{2em}}{\contentslabel{0em}}{}{\titlerule*[0.3pc]{.}\contentspage}[\vspace{0.6ex}]
\titlecontents{chapter}[1.5em]{\hspace{2em}}{\contentslabel{1.5em}}{}{\titlerule*[0.3pc]{.}\contentspage}[\vspace{0.6ex}]
\titlecontents{section}[3em]{\hspace{2em}}{\contentslabel{2.2em}}{}{\titlerule*[0.3pc]{.}\contentspage}[\vspace{0.6ex}]
\titlecontents{subsection}[4.5em]{\hspace{2em}}{\contentslabel{2.9em}}{}{\titlerule*[0.3pc]{.}\contentspage}[\vspace{0.6ex}]
%========================================================================%
% 页眉设置
%========================================================================%
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{myfancy}{
\fancyhead{}
\fancyhead[CE]{\zihao{5}北京交通大学硕士学位论文}
\fancyhead[CO]{\zihao{5}\leftmark}
\fancyfoot[CO,CE]{\zihao{-5}\thepage}
}
\fancypagestyle{myempty}{
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{myclear}{
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot{}
}
\fancypagestyle{plain}{
\fancyhead{}
\fancyhead[CE]{\zihao{5}北京交通大学硕士学位论文}
\fancyhead[CO]{\zihao{5}\leftmark}
\fancyfoot[CO,CE]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.4pt}
}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
%========================================================================%
% 自定义内容
%========================================================================%
\newcommand{\ctitle}[1]{\renewcommand{\ctitle}{#1}}
\newcommand{\etitle}[1]{\renewcommand{\etitle}{#1}}
\newcommand{\cdata}[1]{\renewcommand{\cdata}{#1}}
\newcommand{\cauthor}[1]{\renewcommand{\cauthor}{#1}}
\newcommand{\cid}[1]{\renewcommand{\cid}{#1}}
\newcommand{\ctutor}[1]{\renewcommand{\ctutor}{#1}}
\newcommand{\jobtitle}[1]{\renewcommand{\jobtitle}{#1}}
\newcommand{\category}[1]{\renewcommand{\category}{#1}}
\newcommand{\degree}[1]{\renewcommand{\degree}{#1}}
\newcommand{\major}[1]{\renewcommand{\major}{#1}}
\newcommand{\field}[1]{\renewcommand{\field}{#1}}
\newcommand{\cthanks}[1]{\renewcommand{\cthanks}{#1}}
\newcommand{\cabstract}[1]{\renewcommand{\cabstract}{#1}}
\newcommand{\eabstract}[1]{\renewcommand{\eabstract}{#1}}
\newcommand{\cprelude}[1]{\renewcommand{\cprelude}{#1}}
%========================================================================%
% 参考文献格式
%========================================================================%
\bibliographystyle{GBT7714-2005NLang-UTF8}
\let\oldcitep\citep
\newcommand{\citen}[2][]{\textsuperscript{\oldcitep{#2}#1}}
\renewcommand{\citep}{\citen}
%========================================================================%
% 前置部分命令
%========================================================================%
\newenvironment{thecenter}
	{\begin{center}\vspace{24pt}\zihao{3}\heiti}
	{\vspace{18pt}\end{center}}
\newcommand{\cover}{
	\thispagestyle{myclear}
	\vspace{22mm}
	\begin{center}
	\includegraphics[width=107mm]{pic/logo.png}

	{\vspace{4ex}\zihao{2}\ziju{0.5}\songti 硕士学位论文\vspace{2cm}}

	{\zihao{-3}\ctitle\vspace{1cm}}

	{\zihao{-3}\etitle\vspace{3.8cm}}

	{\zihao{4}作者：\cauthor\vspace{1cm}}

	{\zihao{4}导师：\ctutor}
	\vfill
	{\zihao{4}北京交通大学\vspace{1cm}}

	\cdata
	\end{center}
	\newpage
}
\newcommand{\ccopyright}{
	\thispagestyle{myclear}
	\vspace{2cm}
	\begin{center}
	{\zihao{3}\heiti 学位论文版权使用授权书}
	\end{center}

	本学位论文作者完全了解北京交通大学有关保留、使用学位论文的规定。特授权北京交通大学可以将学位论文的全部或部分内容编入有关数据库进行检索，提供阅览服务，并采用影印、缩印或扫描等复制手段保存、汇编以供查阅和借阅。同意学校向国家有关部门或机构送交论文的复印件和磁盘。学校可以为存在馆际合作关系的兄弟高校用户提供文献传递服务和交换服务。

	（保密的学位论文在解密后适用本授权说明）
	\vspace{3cm}

	\begin{minipage}[t]{0.5\textwidth}
	学位论文作者签名：\vspace{4ex}

	签字日期：\hspace{2em}年\hspace{2em}月\hspace{2em}日
	\end{minipage} 
	\hfill
	\begin{minipage}[t]{0.4\textwidth}
	导师签名：\vspace{4ex}

	签字日期：\hspace{2em}年\hspace{2em}月\hspace{2em}日
	\end{minipage} 	
	\newpage
}
\newcommand{\ctitlepage}{
	\thispagestyle{myempty}
	{\noindent\zihao{5}学校代码：10004\hfill 密级：秘密}
	\vspace{4ex}
	\begin{center}
	{\zihao{0}\ziju{0.1}\kaishu 北京交通大学\vspace{0.5ex}}

	{\zihao{2}\ziju{0.5}\songti 硕士学位论文\vspace{4ex}}	

	{\zihao{-3}\ctitle\vspace{2ex}}

	{\zihao{-3}\etitle\vspace{6ex}}
	\end{center}
	\begin{minipage}[t]{0.5\textwidth}
	\zihao{4}\noindent
	作者姓名：\cauthor\vspace{2ex}

	导师姓名：\ctutor\vspace{2ex}

	学位类别：\category\vspace{2ex}

	学科专业：\major\vspace{2ex}
	\end{minipage} 
	\hfill
	\begin{minipage}[t]{0.4\textwidth}
	\zihao{4}\noindent
	学\hspace{2em}号：\cid\vspace{2ex}

	职\hspace{2em}称：\jobtitle\vspace{2ex}

	学位级别：\degree\vspace{2ex}

	研究方向：\field\vspace{2ex}
	\end{minipage} 
	\vfill
	\begin{center}\zihao{4}
	北京交通大学\vspace{2ex}

	\cdata
	\end{center}
	\newpage	
}
\newcommand{\myclpage}{
	\thispagestyle{myclear}
	\mbox{}
	\newpage
}
\newcommand{\myfanpage}{
	\thispagestyle{myfancy}
	\mbox{}
	\newpage
}
\newcommand{\thankspage}{
	\thispagestyle{myempty}
	\begin{thecenter}
	致谢
	\end{thecenter}

	\cthanks
	\newpage
}
\newcommand{\cabspage}{
	\thispagestyle{myfancy}
	\markboth{摘要}{}
	\addcontentsline{toc}{part}{摘要}
	\begin{thecenter}
	摘要
	\end{thecenter}

	\cabstract
	\newpage
}
\newcommand{\eabspage}{
	\thispagestyle{myfancy}
	\markboth{ABSTRACT}{}
	\addcontentsline{toc}{part}{ABSTRACT}
	\begin{thecenter}
	ABSTRACT
	\end{thecenter}

	\eabstract
	\newpage
}
\newcommand{\cprepage}{
	\thispagestyle{myfancy}
	\markboth{序言}{}
	\addcontentsline{toc}{part}{序言}
	\begin{thecenter}
	序言
	\end{thecenter}

	\cprelude
	\newpage
}
\newcommand{\cstatement}{
	\thispagestyle{myfancy}
	\markboth{独创性声明}{}
	\addcontentsline{toc}{part}{独创性声明}
	\begin{thecenter}
	独创性声明
	\end{thecenter}

	\indent\zihao{5}本人声明所呈交的学位论文是本人在导师指导下进行的研究工作和取得的研究成果，除了文中特别加以标注和致谢之处外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得北京交通大学或其他教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。

	\vspace{2cm}学位论文作者签名：\hspace{6.5em}签字日期：\hspace{4em}年\hspace{2em}月\hspace{2em}日
	\cleardoublepage
}
\newcommand{\clastpage}{
	\thispagestyle{myfancy}
	\markboth{学位论文数据集}{}
	\addcontentsline{toc}{part}{学位论文数据集}
	\begin{thecenter}
	学位论文数据集
	\end{thecenter}
	\begin{center}
	\includegraphics[width=\textwidth]{pic/tab.png}
	\end{center}
}
%========================================================================%
% 结束
%========================================================================%