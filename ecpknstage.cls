%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 中法工程师学院毕业实习模板 - LaTeX  2023-5-16
%% %% 论文样式参考自学院颁发模板
%% %% 基于北航研究生毕业论文模板进行开发
%% %%
%% %% 中法工程师学院毕业实习修改作者：
%% %%   Luo Chensheng (Github@lcs27)
%% %%
%% %% 初始北航研究生毕业论文模板作者:
%% %%   Wei Quanmao (weiqm@buaa.edu.cn)
%% %%   Qiao Junfeng (qiaojunfeng@outlook.com)
%% %%
%% %% Versions:
%% %%   v4.0  LuoCS (16-05-2023)
%% %%   v3.1  WeiQM (01-24-2022)
%% %%   v3.0  WeiQM (03-07-2020)
%% %%   v2.2  WeiQM (11-30-2019)
%% %%   v2.1  QiaoJF, WeiQM (12-19-2018)
%% %%   v2.0  WeiQM, QiaoJF (11-22-2018)
%% %%   v1.3  Wei Quanmao (10-15-2018)
%% %%   v1.2  Wei Quanmao (07-31-2018)
%% %%   v1.1  Wei Quanmao (01-04-2018)
%% %%   v1.0a Wei Quanmao (12-17-2017)
%% %%
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EcpknStage}[2023/05/26 v4.0 ECPKN Stage Report class]
\typeout{This is LaTeX template buaa. Version 4.0 (based on CTeX) 05-16-2023}

%% 选项

%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印
\DeclareOption{printtype}{\ClassWarning{buaa}{%
  You have not specified the PRINTTYPE option. The word printtype should be replaced by one of the following thesis type: oneside, twoside.
}}

%% 系统设置
\DeclareOption{win}{\gdef\@ostype{win}}     % windows
\DeclareOption{linux}{\gdef\@ostype{linux}} % linux
\DeclareOption{max}{\gdef\@ostype{mac}}     % mac
\DeclareOption{ostype}{\ClassWarning{buaa}{%
  You have not specified the OSTYPE option. The word ostype should be replaced by one of the following thesis type: win, linux, mac.
}}

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional}{\gdef\@thesis{professional}}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{ProDoctor}{\gdef\@thesis{prodoctor}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}
\DeclareOption{Win}{\gdef\@ostype{win}}
\DeclareOption{Linux}{\gdef\@ostype{linux}}
\DeclareOption{Max}{\gdef\@ostype{mac}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{master,public,oneside,win,a4paper,sub4section}
\ProcessOptions\relax

%% 引用ctexbook: 小4,1.5倍行距
\LoadClass[UTF8,zihao=-4,linespread=1.7,openany]{ctexbook}%1.5+0.2行间距
\setcounter{secnumdepth}{5}

%% BUAAThesis字样及版本信息
\usepackage{graphicx}
\def\BUAAThesisVer{v4.0 05-17-2022}
\def\BUAAThesis{%
 B%
 {\fontsize{0.8em}{\baselineskip}\selectfont
 \kern-.12em\lower.5ex\hbox{U}%
 \kern-.46em\raise.47ex\hbox{A}%
 \kern-.12em A%
}
 \kern-.35emT%
 \kern-.22em\lower.5ex\hbox{H}%
 \kern-.08em E%
 \kern-.05em\lower.5ex\hbox{S}%
 \kern-.26em I%
 \kern-.26em\raise.5ex\hbox{\rotatebox[origin=c]{180}{S}}%
}

%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage{setspace}     % 设置行间距
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subfigure}    % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        % 列举
\RequirePackage{enumitem}     % 列举
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage[figurename=Fig.,tablename=Tab.]{caption}      % 标题设置
\RequirePackage[lang=english,listtype+=Eng]{bicaption} % 双标题
\RequirePackage{listings}     % 代码环境
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{newfloat}     % 浮动环境
\RequirePackage{stfloats}     % 浮动
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage{babel}        % 多语言
\RequirePackage[hypertexnames=false]{hyperref}      % 超链接
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释
\RequirePackage{inputenc}%For French accents
\RequirePackage{fontenc}%For French babel

% % 根据不同系统调整
% \ifthenelse{\equal{\@ostype}{win}}{ % win 配置
%   \RequirePackage{times}        % Times New Roman字体
%   % 修复宋体加粗问题
%   \setCJKfamilyfont{zhsong}[AutoFakeBold = {2.17}]{SimSun}
%   \renewcommand*{\songti}{\CJKfamily{zhsong}}
%   \setCJKfamilyfont{zhhei}[AutoFakeBold = {3.17}]{SimHei}
%   \renewcommand*{\heiti}{\CJKfamily{zhhei}}
% }{}
% \ifthenelse{\equal{\@ostype}{linux}}{ % linux 配置
%   \RequirePackage{times}        % Times New Roman字体
%   \setCJKfamilyfont{zhsong}[AutoFakeBold = {2.17}]{SimSun}
%   \renewcommand*{\songti}{\CJKfamily{zhsong}}
%   \setCJKfamilyfont{zhhei}[AutoFakeBold = {3.17}]{SimHei}
%   \renewcommand*{\heiti}{\CJKfamily{zhhei}}
% }{}
% \ifthenelse{\equal{\@ostype}{mac}}{ % mac 配置
%   \RequirePackage{times}        % Times New Roman字体
%   \RequirePackage{fontspec}     % 字体设置 (!Only for XeLaTeX!)
% }{}

% 统一不同系统的字体设置
\RequirePackage{times}        % Times New Roman字体
\setCJKmainfont[Path=fonts/, AutoFakeBold]{SimSun}
% 修复宋体加粗问题
\setCJKfamilyfont{zhsong}[Path=fonts/, AutoFakeBold]{SimSun}
\renewcommand*{\songti}{\CJKfamily{zhsong}}
\setCJKfamilyfont{zhhei}[Path=fonts/, AutoFakeBold]{SimHei}
\renewcommand*{\heiti}{\CJKfamily{zhhei}}

% 根据不同编译系统选择正确的 Times New Roman字体
\usepackage{iftex}
\ifPDFTeX
\else
	\setmainfont[Path=fonts/,
		BoldFont={* Bold},
		ItalicFont={* Italic},
		BoldItalicFont={* Bold Italic}
	]{Times New Roman}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

% 数学定理：
% 以下定义数学定理环境默认风格为 buaa
\newtheoremstyle{buaa}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\bfseries}% name of head font.
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').
\theoremstyle{buaa}

% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\algorithmcfname}{算法}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}

% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries %% "Proof" is bold
    #1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
    basicstyle=\small\ttfamily,
    xleftmargin=2pc,
    xrightmargin=2pc,
    frame=single,
    columns=flexible,
    numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧页起 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Subtitle}[2]{\gdef\@subtitlecn{#1} \gdef\@subtitleen{#2}}
\newcommand{\Major}[1]{\gdef\@major{#1}}
\newcommand{\Field}[1]{\gdef\@field{#1}}
\newcommand{\Post}[1]{\gdef\@post{#1}}
\newcommand{\Tutor}[3]{\gdef\@tutorcn{#1} \gdef\@tutoren{#2} \gdef\@tutordegree{#3}}
\newcommand{\Cotutor}[3]{%
  \gdef\@cotutorcn{#1}
  \gdef\@cotutoren{#2}
  \gdef\@cotutordegree{#3}}
\newcommand{\Author}[2]{\gdef\@authorcn{#1} \gdef\@authoren{#2}}
\newcommand{\StudentID}[1]{\gdef\@studentid{#1}}

\newcommand{\DateBeginIntern}[3]{%
  \gdef\@datebegininternm{#1}
  \gdef\@datebegininternd{#2}
  \gdef\@datebegininterny{#3}}
\newcommand{\DateEndIntern}[3]{%
  \gdef\@dateendinternm{#1}
  \gdef\@dateendinternd{#2}
  \gdef\@dateendinterny{#3}}
\newcommand{\DateSubmit}[3]{%
  \gdef\@datesubmitm{#1}
  \gdef\@datesubmitd{#2}
  \gdef\@datesubmity{#3}}
\newcommand{\DateDefence}[3]{%
  \gdef\@datedefencem{#1}
  \gdef\@datedefenced{#2}
  \gdef\@datedefencey{#3}}

\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/bi/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% A4纸页边距均25mm
% 打印留边平移5mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=25mm,bottom=25mm,inner=30mm,outer=20mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

% 设置目录格式

\titlecontents{chapter}[0pt]{\settowidth{\hangindent}{\thecontentslabel}\heiti\zihao{-4}}
{\thecontentslabel}{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{section}[2em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{-4}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{subsection}[3em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{5}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}


\titlecontents{figure}[0pt]{\settowidth{\hangindent}{图~\thecontentslabel\ \ }\songti\zihao{-4}}
{图~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{table}[0pt]{\settowidth{\hangindent}{表~\thecontentslabel\ \ }\songti\zihao{-4}}
{表~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{figureEng}[0pt]{\settowidth{\hangindent}{Fig.~\thecontentslabel\ \ }\songti\zihao{-4}}
{Fig.~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{tableEng}[0pt]{\settowidth{\hangindent}{Tab.~\thecontentslabel\ \ }\songti\zihao{-4}}
{Tab.~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}}
{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}

\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\p@subfigure}{\thefigure}

% Define the new floating environment type "figureEng"
\DeclareFloatingEnvironment[fileext=lof2]{figureEng}[Figure][\sc List of Figures]
% Define the new floating environment type "tableEng"
\DeclareFloatingEnvironment[fileext=lot2]{tableEng}[Table][\sc List of Tables]

\DeclareCaptionFormat{tabfigformat}{\bf\songti\zihao{5}{#1~~#3}}

\captionsetup[figure]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

\captionsetup[figure][bi-first]{name=图}      %设置图的中文前缀
\captionsetup[table][bi-first]{name=表}       %设置表的中文前缀
\captionsetup[figure][bi-second]{name=Fig.}   %设置图的英文前缀
\captionsetup[table][bi-second]{name=Tab.}   %设置表的英文前缀

\captionsetup[figure][bi]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table][bi]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

%出现在页面中间的浮动对象与上下方文本之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt。
%\setlength{\intextsep}{12pt \@plus2pt \@minus 2pt}

%出现在页面的顶部或底部的浮动对象之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt
%\setlength{\floatsep}{12pt \@plus2pt \@minus2pt}

%出现在页面的顶部或底部的浮动对象与文本之间的垂直距离
% 缺省为 20pt plus 2pt minus 4pt。
%\setlength{\textfloatsep}{20bp \@plus2pt \@minus4pt}

% 设置行间距
\setlength{\parskip}{0pt}

% 列表间接设置
\setlist{
  topsep=0pt, % 列表环境与上文距离
  itemsep=0pt, % 条目间距离
  parsep=\parskip, % 条目内段落距离
  partopsep=0pt % 列表环境与下文距离
}

% 设置参考文献格式
\usepackage{notoccite}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 设置PDF
\hypersetup{%
  colorlinks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdffitwindow=true,
  pdfsubject={ECPKN Stage},
  pdfcreator={lcs27}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 工具函数
\newcommand{\checkinput}{%检测输入元素
  \ifthenelse{\isundefined{\@titlecn}}{\errmessage{%
    Please set title by 'Title'.}}{}
  \ifthenelse{\isundefined{\@major}}{\errmessage{%
    Please set major by 'Major'.}}{}
  \ifthenelse{\isundefined{\@field}}{\errmessage{%
    Please set field by 'Field'.}}{}
  \ifthenelse{\isundefined{\@tutorcn}}{\errmessage{%
    Please set tutor name by 'Tutor'.}}{}
  \ifthenelse{\isundefined{\@authorcn}}{\errmessage{%
    Please set author name by 'Author'.}}{}
  \ifthenelse{\isundefined{\@studentid}}{\errmessage{%
    Please set student ID date by 'StudentID'.}}{}
  \ifthenelse{\isundefined{\@datebegininterny}}{\errmessage{%
    Please set beginintern date by 'Datebeginintern'.}}{}
  \ifthenelse{\isundefined{\@dateendinterny}}{\errmessage{%
    Please set endintern date by 'Dateendintern'.}}{}
  \ifthenelse{\isundefined{\@datesubmity}}{\errmessage{%
    Please set submite date by 'DateSubmit'.}}{}
  \ifthenelse{\isundefined{\@datedefencey}}{\errmessage{%
    Please set defence date by 'DateDefence'.}}{}
  \ifthenelse{\equal{\@refcolor}{\empty}}{}{%
    \ifthenelse{\equal{\@refcolor}{on} \OR \equal{\@refcolor}{off}}{}{
    \errmessage{Please use 'on' or 'off' for refcolor.}}
  }
  \ifthenelse{\equal{\@beginright}{\empty}}{}{%
    \ifthenelse{\equal{\@beginright}{on} \OR \equal{\@beginright}{off}}{}{
    \errmessage{Please use 'on' or 'off' for beginright.}}
  }
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on} \OR \equal{\@listfigtab}{bi} \OR \equal{\@listfigtab}{off}}{}{
    \errmessage{Please use 'on' or 'bi' or 'off' for listfigtab.}}
  }
}
\newcommand{\sethyper}{%设置链接引用颜色
  \hypersetup{%
    pdftitle={\@titlecn},
    pdfkeywords={\@keywordcn},
    pdfauthor={\@authorcn}
  }
  \ifthenelse{\equal{\@refcolor}{on}}{%
    \hypersetup{
      allcolors=blue,
    }
  }{%
    \hypersetup{
      allcolors=black,
    }
  }
}

\newcommand{\TranDegree}[1]{%职称翻译
  \frenchspacing
  \ifthenelse{\equal{#1}{教授}}{Prof.}{%
  \ifthenelse{\equal{#1}{副教授}}{Prof.}{%
  \ifthenelse{\equal{#1}{讲师}}{Teacher}{%
  \ifthenelse{\equal{#1}{高工}}{Engineer}{%
  \ifthenelse{\equal{#1}{工程师}}{Engineer}{%
  \ifthenelse{\equal{#1}{研究员}}{Researcher}{%
  \ifthenelse{\equal{#1}{副研究员}}{Researcher}{%
  }}}}}}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
    punct=quanjiao, % 全角
    autoindent=2,  % 缩进
    linestretch=2, % 行伸缩
}
% 部分标题修改
\ctexset{%
    contentsname={目~~~~录},
    listfigurename={图~清~单},
    listtablename={表~清~单},
}
% 标题样式修改
\ctexset{%
    chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
        format=\zihao{3} \heiti \centering \thispagestyle{fancy},
        fixskip=true,
        beforeskip=0pt,
        afterskip=8pt,
        name = {Chapter\ ,.},
        number = \ttfamily\arabic{chapter},
    },
    section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
        format=\zihao{4} \heiti \raggedright,
        beforeskip=7pt,
        afterskip=7pt,
        name = {,.},
        number = \ttfamily\arabic{section},
    },
    subsection={%条标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
        format=\zihao{-4} \heiti \raggedright \bfseries,
        beforeskip=3.61pt,
        afterskip=3.61pt,
        name = {,.},
        number = \ttfamily\arabic{subsection},
    },
    subsubsection={% 附加4级标题 : 小四号宋体加粗居左
        format=\zihao{-4} \songti \raggedright ,
        nameformat=\mdseries,
        beforeskip = 0bp, afterskip = 0bp,
        name = {,.},
        number = \ttfamily\arabic{subsubsection},
    },
    paragraph={% 附加5级标题 : 小四号宋体居左
        format=\zihao{-4} \songti \raggedright,
        beforeskip = 0bp, afterskip = 0bp,
        name = {,.},
        number = \ttfamily\arabic{paragraph},
    },
    subparagraph={% 附加6级标题 : 小四号宋体居左
        format=\zihao{-4} \songti \raggedright,
        beforeskip = 0bp, afterskip = 0bp,
        name = {,.},
        number = \ttfamily\arabic{subparagraph},
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{%
  \checkinput
  \sethyper
}
\AfterEndPreamble{%
  \makecovercn
  \makecoveren
  \makecoverinner
  \makestatementbuaa

  \fancyfoot[C]{\zihao{5} \uppercase\expandafter{\romannumeral \thepage}}
  \setcounter{page}{1}
  \abstructkeyword
  \makecontextlist

  \renewcommand{\headrulewidth}{0.4pt}
  \fancyfoot[C]{\zihao{5} \thepage}
  \fancyhead[C]{\zihao{-5} 北京航空航天大学中法工程师学院工程师毕业大实习论文}
  \setcounter{page}{1}
}


%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
{\pdfbookmark[0]{中文封面}{makecovercn}

  {\zihao{5} \heiti \noindent
    \makebox[5\ccwd][s]{中图分类号}：{\bfseries TP242}%
    \\
    \makebox[5\ccwd][s]{论文编号}：{\bfseries 10006\@studentid}%
  }

  \vspace{5pt}
  \centering
  \begin{figure}[!h]
    \centering
    \includegraphics[width=.75\linewidth]{pic/head-intern}
  \end{figure}

  \centering

  \vspace{5pt}
  \begin{spacing}{1.2}
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \zihao{-0} \songti \bfseries \@titlecn
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{1} \@subtitlecn
   }
  \end{spacing}

  \vspace{50pt}
  \begin{spacing}{1.8}
    \ziju{0.2} \zihao{-3} \heiti
    \begin{tabular}{cll}
      作者姓名  & \@authorcn \\
      实习领域  & \multicolumn{2}{l}{\@field} \\
      实习岗位  & \multicolumn{2}{l}{\@post} \\
      企业导师  & \@tutorcn   & \@tutordegree \\
      \ifthenelse{\isundefined{\@cotutorcn}}{}{%
                & \@cotutorcn & \@cotutordegree\\
      }
      培养学院  & 中法工程师学院
    \end{tabular}
  \end{spacing}
  \newpage
}}
\newcommand{\makecoveren}{% 英文封面
{\pdfbookmark[0]{英文封面}{makecoveren}
  \centering

  \ 
  \vspace{100pt}

  \begin{spacing}{1.2}

    {\begin{spacing}{1.2}
      \zihao{-2} \bfseries
      \ifthenelse{\isundefined{\@subtitleen}}{\vspace{20pt}}{}
      \@titleen
      \ifthenelse{\isundefined{\@subtitleen}}{\vspace{20pt}}{%
        \\ \vspace{10pt}
        \zihao{3} \@subtitleen}
    \end{spacing}
    }

    \vspace{50pt}

    {\zihao{-2}
    \bfseries
      A Dissertation Submitted for the Degree of Engineer
    }

    \vspace{100pt}
    {\zihao{-2} \bfseries
      \begin{tabular}{ll}
        \ifthenelse{\isundefined{\@cotutorcn}}{%
          \makebox[80pt][s]{Candidate: }  & \@authoren \\
          \vspace{-10pt}\\
          \makebox[80pt][s]{Supervisor: } & \TranDegree{\@tutordegree} \hspace{-8pt} \@tutoren \\
        }{%
          \makebox[90pt][s]{Candidate: }  & \@authoren \\
          \vspace{-10pt}\\
          \makebox[90pt][s]{Supervisors: } & \TranDegree{\@tutordegree} \hspace{-8pt} \@tutoren \\
          & \TranDegree{\@cotutordegree} \hspace{-8pt} \@cotutoren\\
        }
      \end{tabular}
    }
  \end{spacing}

  \vspace{150pt}

  \begin{spacing}{2.2}
    {\zihao{-2}
      \textbf{Sino-French Engineer School}\\ 
      \textbf{Beihang University, Beijing, China}
    }
  \newpage
  \end{spacing}
}}
\newcommand{\makecoverinner}{% 封面内页
{\pdfbookmark[0]{题目页}{makecoverinner}

  {\zihao{5} \heiti \noindent
    \makebox[5\ccwd][s]{中图分类号}：{\bfseries TP242}
    \\
    \makebox[5\ccwd][s]{论文编号}：{\bfseries 10006\@studentid}
  }

  \centering
  \vspace{150pt}

  \begin{spacing}{1.2}
    {\zihao{-2} \heiti
      工~~程~~师~~毕~~业~~实~~习~~报~~告
    }

    \vspace{50pt}
    {\begin{spacing}{1.2}
    \zihao{-1} \heiti
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \@titlecn
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{2} \@subtitlecn}
    \end{spacing}
    }
  \end{spacing}

  \vspace{120pt}
  \begin{spacing}{2.3}
    \zihao{-4} \songti
    \begin{tabular}{lrrrlrrr}
      作者姓名     &          \multicolumn{3}{l}{\@authorcn}                   & 申请学位级别        &   \multicolumn{3}{l}{工程师}       \\
      企业导师姓名 &          \multicolumn{3}{l}{\@tutorcn}                    & 职\hspace{2\ccwd}位 &                        \multicolumn{3}{l}{\@tutordegree}                      \\
      专业方向 & \multicolumn{3}{l}{\@major} & 实习方向 & \multicolumn{3}{l}{\@field}                            \\
      实习时间自   & \@datebegininterny\ 年 & \@datebegininternm\ 月 & \@datebegininternd\ 日 & \hspace{2\ccwd}起至 & \@dateendinterny\ 年 & \@dateendinternm\ 月 & \@dateendinternd\ 日止             \\
      报告提交日期 & \@datesubmity\ 年 & \@datesubmitm\ 月 & \@datesubmitd\ 日 & 答辩日期        & \@datedefencey \ 年 & \@datedefencem \ 月 & \@datedefenced \ 日\hspace{\ccwd} \\
    \end{tabular}
  \end{spacing}
  \newpage
}}
\newcommand{\makestatementbuaa}{% 北航声明
{\pdfbookmark[0]{北航声明}{makestatementbuaa}

  \begin{spacing}{1.7}%1.5+0.2
    {\zihao{3} \heiti \centerline{关于实习报告的独创性声明}}
    {\zihao{-4} \songti ~\par
       本人郑重声明：所呈交的报告是本人在指导教师指导下独立进行实习工作所取得的成果，论文中有关资料和数据是实事求是的。尽我所知，除文中已经加以标注和致谢外，本论文不包含其他人已经发表或撰写的研究成果，也不包含本人或他人为获得北京航空航天大学中法工程师学院或其它教育机构的学位或学历证书而使用过的材料。与我一同工作的同志对研究所做的任何贡献均已在论文中作出了明确的说明。


        若有不实之处，本人愿意承担相关法律责任。
     \\

      {\zihao{5}\ \ 实习报告作者签名：\underline{\hspace{7\ccwd}} \hspace{4\ccwd}
      日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}
    }

    \vspace{50pt}

    {\zihao{3} \heiti \centerline{实习报告使用授权书}}
    {\zihao{-4} \songti ~\par
        本人完全同意北京航空航天大学中法工程师学院有权使用本实习报告（包括但不限于其印刷版和电子版），使用方式包括但不限于：保留实习报告，按规定向国家有关部门（机构）送交实习报告，以学术交流为目的赠送和交换实习报告，允许实习报告被查阅、借阅和复印，将实习报告的全部或部分内容编入有关数据库进行检索，采用影印、缩印或其他复制手段保存实习报告。


      保密实习报告在解密后的使用授权同上。
     \\

        {\zihao{5}\ \ 实习报告作者签名：\underline{\hspace{7\ccwd}} \hspace{4\ccwd}
        日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}

        {\zihao{5}\ \ 企业导师签名：\underline{\hspace{9\ccwd}}    \hspace{4\ccwd}
        日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}
    }

  \end{spacing}
  \newpage
}}


\newcommand{\abstructkeyword}{% 摘要
{\pdfbookmark[0]{中英摘要}{abstructkeyword}

  \begin{spacing}{1.7}%1.5+0.2

    {\zihao{3} \heiti  \centerline{中文摘要}}
    {\zihao{-4} \songti ~\par
      \@abstrctcn \par ~\par
      {\bfseries \heiti 关键词：} \heiti \@keywordcn
    }

    \newpage

    {\zihao{3} \bfseries  \centerline{ABSTRACT}}
    {\zihao{-4} ~\par
      \@abstrcten \par ~\par
      {\bfseries \textit{Key words:}} \@keyworden
    }

  \end{spacing}

  
}}
\newcommand{\makecontextlist}{% 目录
  {\pdfbookmark[0]{目录}{makecontextlist}
  \tableofcontents
  }
  }


\newcommand{\chaptera}[1]{%无章号但编入目录
  \ctexset{chapter/numbering=false}
  \chapter{#1}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %
}
\newcommand{\Bib}[2]{%参考文献
  \bibliographystyle{#1}
  \phantomsection
  \addcontentsline{toc}{chapter}{参考文献}
  \bibliography{#2}
}
\renewcommand{\appendix}{% 附录
  \ctexset{chapter/numbering=false}
  \chapter{附~~~~录}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %
}

\newcounter{multappendix}
\newcommand{\multappendix}{% 附录
    \addtocounter{multappendix}{1}
    \ctexset{chapter/numbering=false}
    \chapter{附~~~~录~~~~\Alph{multappendix} }
    \setcounter{section}{0}%
    \setcounter{subsection}{0}%
    \setcounter{subsubsection}{0}%
    %
    \gdef\thesection{\@Alph\c@multappendix.\@arabic\c@section}%
    \gdef\thesubsection{\@Alph\c@multappendix.\@arabic\c@section.\@arabic\c@subsection}%
    %
}


\newcommand{\acknowledgments}{%致谢
  \ctexset{chapter/numbering=false}
  \chapter{致~~~~谢}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}

%% --END--
\endinput
