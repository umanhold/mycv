\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2018/05/12 My custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{calc}

%---------------%
%	CUSTOMIZE	%
%---------------%

% define lengths

\newlength{\myl}
\settowidth{\myl}{ -- 07/2016}
\addtolength{\myl}{3em}

\newlength{\myle}
\settowidth{\myle}{10/2010 -- 07/2016}
\addtolength{\myle}{3em}

\newlength{\mylen}
\settowidth{\mylen}{10/2010 -- 07/2016}
\addtolength{\mylen}{-3em}


%	Section
\titleformat{\section}{
	\Large\scshape\raggedright}		% Make the section headers large, with small capital letters and left aligned
	{}{0em}							% Can be used to give a prefix to all sections, like 'Section ...'
	{}								% Can be used to insert code before the heading
	[\titlerule] 					% Inserts a horizontal line after the heading

%	Subsection languages
\newcommand{\langsubsection}[7]{
	{\begin{scshape}#1\end{scshape}} \hspace{\the\mylen} #2 #3 \\ \hspace*{\the\myle} #4 #5 #6 \\ \hspace*{\the\myle} #7
%	\newlength{\myleng}
%	\settowidth{\myleng}{\begin{scshape}#1\end{scshape}}
%	\the\myleng
}

%	Entry with dates
\newcommand{\dateentry}[2]{
	{#1 \hspace{\the\myl} #2}
}

\newcommand{\periodentry}[2]{
	{#1 \hspace{3em} {#2}}
}
				
%	Professional Experience items
\newcommand{\profitems}[3]{
	\begin{enumerate}
		\item #1
		\item #2
		\item #3
	\end{enumerate}
}

%	Education items
\newcommand{\educitems}[2]{
	\begin{enumerate}
		\item #1
		\begin{itemize}
			\item[] #2
		\end{itemize}
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
	\centerline{#1, #2}
}


%	Contact
\newcommand{\contact}[2]{
	\centerline{\faMobile\hspace{0.1cm}#1 \hspace{0.1cm}\Envelope\hspace{0.1cm}\href{mailto:#2}{#2}}
}