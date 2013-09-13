% LawTeX HC pleadings
%
% (c) Chris von Csefalvay / chrisvoncsefalvay.com
% email: chris at chrisvoncsefalvay.com
%
% A complete documentation and other legal LaTeX styles
% can be found at lawtex.org.
%
% LPPL Latex Public Project Licence
%
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ewhc}[2013/08/13 EWHC pleadings template]
\LoadClass{article}
\RequirePackage{mathptmx}
\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage{arrayjob}
\RequirePackage{etex}
\RequirePackage[margin=1.0in,paperheight=29.7cm,paperwidth=21cm]{geometry} 

\usepackage{setspace}
\usepackage{booktabs}
\usepackage{mathptmx}

\newcounter{paracount}
\setcounter{paracount}{0}

\newcommand{\@claimno}{}
\newcommand{\claimno}[1]{\renewcommand{\@claimno}{#1}}

\newcommand{\@division}{}
\newcommand{\division}[1]{\renewcommand{\@division}{#1}}

\newcommand{\@judge}{}
\newcommand{\judge}[1]{\renewcommand{\@judge}{#1}}

\newcommand{\@title}{}
\newcommand{\title}[1]{\renewcommand{\@title}{#1}}

\ifdefempty{\judge}{false} \\
}{true}



%%% deffing parties % (fold)
\def\@claimants{None}
\newcommand{\claimants}[1]{\def\@claimants{#1}}
\newcommand{\show@claimants}{\@claimants}
%%% deffing parties % (end)

%%% createheader % (fold)
\newcommand{\createheader}{

	\underline{\textbf{IN THE HIGH COURT OF JUSTICE}} \hfill \underline{\textbf{Claim No. \@claimno}}

	\underline{\textbf{\MakeUppercase{\@division}}} \\

	\underline{\textbf{B E T W E E N}} \\

	\begin{center}
		{\textbf{\MakeUppercase{\@claimants}}}
		\end{center}
	\raggedleft{\underline{\textbf{Claimant}}}
	\\
	\begin{center}
		- and -\\ 
		\vspace*{2\baselineskip}
		{\textbf{CD CORPORATION}}
	\end{center}
	\raggedleft{\underline{\textbf{Defendant}}}

	\begin{center}

		\begin{tabular}{@{}llr@{}} \specialrule{1px}{0.2in}{0.2in}
		\multicolumn{2}{c}{\textbf{\MakeUppercase{\@title}}} \\ 
		\specialrule{1px}{0.2in}{0.2in}
		\end{tabular}

	\end{center}

}

%%% createheader % (end)

%%% createcover % (fold)
\newcommand{\createcover}{

\newpage
\thispagestyle{empty}
\newgeometry{left=10cm}

\raggedleft \underline{\textbf{Claim No. 1234567 of 2013}} \\ \vspace*{1\baselineskip}

\raggedright \underline{\textbf{IN THE HIGH COURT OF JUSTICE}}   \\

\raggedright \underline{\textbf{QUEEN'S BENCH DIVISION}} \\

\raggedright \underline{\textbf{Before Mr. Justice Smith}} \\

\raggedright \underline{\textbf{B E T W E E N}} \\
\vspace*{1\baselineskip}
\begin{center}
{\textbf{AB LIMITED}}
\end{center}
\raggedleft{\underline{\textbf{Claimant}}}
\\
\begin{center}
- and -\\ 
\vspace*{2\baselineskip}
{\textbf{CD CORPORATION}}
\end{center}
\raggedleft{\underline{\textbf{Defendant}}}
\vspace*{1\baselineskip}
\begin{center}

	\begin{tabular}{@{}llr@{}} \specialrule{1px}{0.2in}{0.2in}
	\multicolumn{2}{c}{\textbf{PARTICULARS OF CLAIM}} \\ 
	\specialrule{1px}{0.2in}{0.2in}
	\end{tabular}

\end{center}
\vspace*{6\baselineskip}

\begin{center}
	Your firm information\\
	Your firm address\\
	Reference\\
	Solicitors for the Claimant
\end{center}

}

%%% createcover % (end)

%%% Statement of Truth generator % (fold)

% \newcommand{\statementoftruth}[]

%%% Statement of Truth generator % (end)
