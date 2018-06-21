\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2018/05/12 My custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{calc}
\RequirePackage{datetime}

%---------------%
%	CUSTOMIZE	%
%---------------%

\pagenumbering{gobble}
\renewcommand{\arraystretch}{0.67}

\newdateformat{myformat}{\monthname[\THEMONTH]{ }\THEDAY{, }\THEYEAR}

% define lengths

\newlength{\myl}
\settowidth{\myl}{ -- 08/2018}
\addtolength{\myl}{5em}

\newlength{\myle}
\settowidth{\myle}{10/2015 -- 08/2018}
\addtolength{\myle}{5em}

\newlength{\mylen}
\settowidth{\mylen}{2015}
\addtolength{\mylen}{9.16em}

\newlength{\myleng}
\settowidth{\myleng}{10/2015 -- 08/2018}
\addtolength{\myleng}{6.4em}

\newlength{\mylengt}
\settowidth{\mylengt}{ }
\addtolength{\mylengt}{0.27em}

\newlength{\mylength}
\settowidth{\mylength}{Stata, R}
\addtolength{\mylength}{2.9em}

\newlength{\nmyl}
\settowidth{\nmyl}{since 2008}
\addtolength{\nmyl}{4.27em}





%	headline
\newcommand{\head}[1]{
	{#1 \brk}
}

%	break
\newcommand{\brk}{
	\\[0.1cm]
}

%	break with space
\newcommand{\brksp}{
	\\[0.15cm] \hspace*{\the\myle}
}




%	Section
\titleformat{\section}{
	\Large\scshape\raggedright}		% Make the section headers large, with small capital letters and left aligned
	{}{0em}							% Can be used to give a prefix to all sections, like 'Section ...'
	{}								% Can be used to insert code before the heading
	[\titlerule] 					% Inserts a horizontal line after the heading

%	Subsection languages
%\newcommand{\langentry}[2]{
%	{\begin{scshape}#1\end{scshape}}\hspace{\the\mylen} #2
%}

%	Entry with dates
\newcommand{\dateentry}[2]{
	{#1\hspace{\the\myl} #2 \brk}
}

\newcommand{\yearentry}[2]{
	{#1\hspace{\the\mylen} #2 \brk}
}

\newcommand{\sinceentry}[2]{
	{#1\hspace{\the\nmyl} #2}
}

\newcommand{\periodentry}[2]{
	{#1\hspace{5em} #2 \brk}
}

%\newcommand{\lperiodentry}[3]{
%	{#1\hspace{5em} #2 \brksp #3 \brk}
%}


\newcommand{\periodentrywob}[2]{
	{#1\hspace{5em} {#2}}
}


%	Education Entries
\newcommand{\studyentry}[5]{
	{\hspace*{\the\myle} \textbf{#1}, Grade #2\brksp Thesis \textit{#3} \brksp\hspace*{2.85em} \textit{#4}, Supervisor: #5 \brk}
}

\newcommand{\erasentry}[2]{
	{\hspace*{\the\myle} \textbf{#1}, Grade #2 \brk}
}

\newcommand{\abientry}[2]{
	{\hspace*{\the\myle} \textbf{#1}, Grade #2 \brk}
}

\newcommand{\schlentry}[2]{
	{\hspace*{\the\myle} Abschluss: #1 \textbf{Grades #2} \brk}
}

%	Professional Experience Entries
\newcommand{\lprofentry}[3]{
	{\hspace*{\the\myle} \textbf{#1} #2 \brksp #3}
}

\newcommand{\sprofentry}[2]{
	{\hspace*{\the\myle} \textbf{#1} #2}
}

\newcommand{\profentry}[1]{
	{\hspace*{\the\myle} #1}
}

%	Professional Experience items
\newcommand{\profitem}[1]{
	\begin{enumerate}
		\item #1
	\end{enumerate}
}

\newcommand{\profitems}[3]{
	\begin{enumerate}
		\item #1
		\item #2
		\item #3
	\end{enumerate}
}

% Skills
\newcommand{\skill}[1]{
	{\noindent\textbf{#1}\brk}
}

\newcommand{\skillentry}[7]{
	\vspace{-0.8cm}
	\begin{table}[H]
		\hspace{-0.35cm}
		\begin{tabular}{ll}
			\textsf{#1}, \hologo{#2}	& \hspace{\the\mylength}	#3 \brk
			\textsc{#4}					& \hspace{\the\mylength}	#5 \brk
			\textsf{#6}					& \hspace{\the\mylength}	#7 \brk
		\end{tabular}
	\end{table}
\vspace{-0.3cm}
}

\newcommand{\langentry}[8]{
	\vspace{-0.8cm}
	\begin{table}[H]
		\hspace{-0.35cm}
		\begin{tabular}{ll}
			\textsc{#1}	& \hspace{\the\mylengt}	#2 \brk
			\textsc{#3}	& \hspace{\the\mylengt}	#4 \brk
			\textsc{#5}	& \hspace{\the\mylengt}	#6 \brk
			\textsc{#7}	& \brk
		\end{tabular}
	\end{table}
}

% Extracuricular activity
\newcommand{\extra}[1]{
	#1 \brk
}


%	CV title
\newcommand{\cvtitle}[1]{
	\centerline{\LARGE\scshape{#1}\vspace{0.5cm}}
}

%	Name
\newcommand{\name}[1]{
	\centerline{\large\scshape{#1}}
}

%	Address
\newcommand{\address}[2]{
	\centerline{#1 $\cdot$ #2}
}

%	Contact
\newcommand{\contact}[2]{
	\centerline{\faMobile\hspace{0.1cm}#1 \hspace{0.1cm}\Envelope\hspace{0.1cm}\href{mailto:#2}{#2}}
}

%	Signature
\newcommand{\signature}[1]{
	\vspace{2cm}
	\begin{figure}[h]
		\includegraphics[width=4cm, height=2cm]{#1}
		\caption*{\hspace*{-14cm}\myformat\today}
	\end{figure}
}

%	Appendix
\newcommand{\append}[1]{
	\vfill
	\noindent\footnotesize{Anhang: #1}
}