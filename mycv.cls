\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2018/05/12 My custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{calc}


%---------------%
%	CUSTOMIZE	%
%---------------%

\pagenumbering{gobble}
\renewcommand{\arraystretch}{0.67}

% define lengths

\newlength{\myl}
\settowidth{\myl}{ -- 07/2016}
\addtolength{\myl}{10em}

\newlength{\myle}
\settowidth{\myle}{10/2012 -- 07/2016}
\addtolength{\myle}{10em}

\newlength{\mylen}
\settowidth{\mylen}{10/2010 -- 07/2016}
\addtolength{\mylen}{-10em}

\newlength{\myleng}
\settowidth{\myleng}{10/2012 -- 07/2016}
\addtolength{\myleng}{11.4em}

\newlength{\mylengt}
\settowidth{\mylengt}{10/2012 -- 07/2016}
\addtolength{\mylengt}{1.5em}



%	headline
\newcommand{\head}[1]{
	{#1 \brk}
}

%	break
\newcommand{\brk}{
	\\[0.14cm]
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

\newcommand{\langentry}[6]{
	\vspace{-0.5cm}
	\begin{table}[H]
		\begin{tabular}{ll}
			#1	\\
			#2	\\
			#3	\\
			#4	\\
			#5	\\
			#6	\\
		\end{tabular}
	\end{table}
}


%	Entry with dates
\newcommand{\dateentry}[2]{
	{#1\hspace{\the\myl} #2 \brk}
}

\newcommand{\periodentry}[2]{
	{#1\hspace{10em} {#2} \brk}
}

\newcommand{\periodentrywob}[2]{
	{#1\hspace{10em} {#2}}
}


%	Education Entries
\newcommand{\studyentry}[4]{
	{\hspace*{\the\myle} \textbf{#1}\brksp Abschluss: #2 \textbf{Note #3} \brksp\textbf{Schwerpunkt:} #4 \brk}
}

\newcommand{\erasentry}[2]{
	{\hspace*{\the\myle} \textbf{#1}\brksp\textbf{Schwerpunkt:} #2 \brk}
}

\newcommand{\muentry}[1]{
	{\hspace*{\the\myle} #1 \brk}
}

\newcommand{\abientry}[4]{
	{\hspace*{\the\myle} Abschluss: #1 \textbf{Note #2} \brksp #3 \textbf{#4} \brk}
}

\newcommand{\schlentry}[2]{
	{\hspace*{\the\myle} Abschluss: #1 \textbf{Grades #2} \brk}
}

%	Professional Experience Entries
\newcommand{\profentry}[2]{
	{\hspace*{\the\myle} #1 \textbf{#2}}
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



%	CV title
\newcommand{\cvtitle}[1]{
	\centerline{\LARGE\scshape{#1}}
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
	\centerline{\hspace{0.1cm}#1 \hspace{0.1cm}\Envelope\hspace{0.1cm}\href{mailto:#2}{#2}}
}

%	Signature
\newcommand{\signature}[1]{
	\vspace{2cm}
	\includegraphics[width=6cm, height=3cm]{#1}
}

%	Appendix
\newcommand{\append}[1]{
	\vfill
	\footnotesize{Anhang: #1}
}