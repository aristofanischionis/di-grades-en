%%
%%
%%
%% =============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{digrades}[2016/04/24 v0.1 DIT.UoA Academic Transcript in English]

\LoadClass[a4paper,oneside,11pt]{article}[2014/09/29]

\RequirePackage[cm-default]{fontspec}
\setmainfont[Script=Greek]{Times New Roman}
%% =============================================================================

%% Packages
%% =============================================================================
\RequirePackage[a4paper, top=2.5cm, bottom=3.5cm, left=1cm, right=1cm,
                bindingoffset=0cm, headsep=0cm,
                headheight=77pt, footskip=34pt]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{setspace}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{ctable}
\RequirePackage{afterpage}
\RequirePackage{ltxtable}
%% =============================================================================

%% Define headers and footers for first and subsequent pages
%% =============================================================================
\pagestyle{fancy}
%\setlength{\headheight}{0pt}
\chead{\restpagesheader}
\cfoot{\restpagesfooter}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhf{}
  \cfoot{\firstpagefooter}
}
%% =============================================================================

%% Student details
%% =============================================================================
\newcommand{\dateofissue}{}
\newcommand{\refnumber}{00000}
\newcommand{\address}{}
\newcommand{\information}{}
\newcommand{\contactnumber}{}

\newcommand{\studentname}{}
\newcommand{\studentsurname}{}
\newcommand{\studentid}{}
\newcommand{\studentregistrationdate}{}
\newcommand{\studentfathername}{}
\newcommand{\studentmothername}{}
\newcommand{\studentbirthplace}{}
\newcommand{\studentbirthdate}{}
\newcommand{\studentmunicipality}{}
\newcommand{\studentmunicipalitynumber}{}

\newcommand{\studentregistrationyear}{}
\newcommand{\thisyear}{}
\newcommand{\enrolledvia}{Nationwide Examinations}
\newcommand{\currentsemester}{}
%% =============================================================================

%% First page header
%% =============================================================================
\newcommand{\certheader}{
%    \newgeometry{top=0.5cm, bottom=3.5cm, left=1cm, right=1cm,
%                bindingoffset=0cm, headsep=0cm,
%                headheight=50pt, footskip=34pt}
    \thispagestyle{plain}
    \center{\fontsize{12}{12}\selectfont\textbf{HELLENIC REPUBLIC}}
    \begin{center}
    \includegraphics[height=2cm]{athena-black} \\[4pt]
    \setstretch{1.2}{
        \fontsize{11}{12}\selectfont
        \textbf{NATIONAL AND KAPODISTRIAN UNIVERSITY OF ATHENS \\
                SCHOOL OF SCIENCE \\
                DEPARTMENT OF INFORMATICS AND TELECOMMUNICATIONS
        }
    }
    \end{center}
    \vspace{0.5cm}
}
%% =============================================================================

%% First page footer
%% =============================================================================
\newcommand{\firstpagefooter}{
    \fontsize{10}{11}\selectfont{
    \begin{tabularx}{\textwidth}{ l X }
        \underline{Note:} &
        Student status is obtained upon registration and is dropped upon degree award, graduation or due to punishment or expulsion. An academic year spans two semesters and starts on 1st September of a calendar year and ends on 31st August of the next calendar year.
    \end{tabularx}
    \\\vspace{0.5cm}
    \--- \hspace{0.05cm} \thepage \hspace{0.05cm} \---}
}
%% =============================================================================

%% Rest pages header
%% =============================================================================
\newcommand{\restpagesheader}{
    \begin{tabularx}{\textwidth}{ X X X }
        \specialrule{.1em}{.05em}{.05em}
        SURNAME & NAME & REGISTRATION NUMBER \\
        \specialrule{.1em}{.05em}{.05em}
        {\textbf{\studentsurname}} & {\textbf{\studentname}} & {\textbf{\studentid}} \\
        \specialrule{.1em}{.05em}{.05em}
    \end{tabularx}\\[8pt]
    {\fontsize{9}{10}\selectfont
    \begin{tabularx}{\textwidth}{ m{1.5cm} m{6cm} m{2cm} m{1.3cm} m{2.5cm} m{1.7cm} X }
        \textbf{\underline{Code}} & \textbf{\underline{Title}} & \textbf{\underline{Group}} & \textbf{\underline{CR/ECTS}} & \textbf{\underline{Exam. Period}} & \textbf{\underline{Grade}} & \textbf{\underline{Calc}}.
    \end{tabularx}}
}
%% =============================================================================

%% Rest pages footer
%% =============================================================================
\newcommand{\restpagesfooter}{
    \fontsize{10}{11}\selectfont{
    \begin{tabularx}{\textwidth}{ l l X }
        \underline{Note:} & Successful examination: & Grade greater than or equal to 5 (five) \\
        ~ & Non-successful examination: & Grade less than 5 (five) \\
        ~ & Good & Grade Point Average greater than or equal to 5,0 and less than 6,50. \\
        ~ & Very Good & Grade Point Average greater than or equal to 6,50 and less than 8,50. \\
        ~ & Excellent & Grade Point Average greater than or equal to 8,5.
    \end{tabularx}
    \\\vspace{0.5cm}
    \--- \hspace{0.05cm} \thepage \hspace{0.05cm} \---}
}
%% =============================================================================

%% Info
%% =============================================================================
\newcommand{\certinfo}{
    \rule{\textwidth}{0.5pt}
    {\fontsize{10}{12}\selectfont
    \begin{tabularx}{\textwidth}{ X r }
        Address: {\address} & ATHENS, {\dateofissue} \\
        Information: {\information} & ~ \\
        Contact Phone Number: {\contactnumber} & Electronic Reference Number: {\refnumber} \\
    \end{tabularx}}
    \rule{\textwidth}{0.5pt}
    {\fontsize{12pt}{12pt}\selectfont Certificate of Academic Transcript (1)}
}
%% =============================================================================

%% Student info
%% =============================================================================
\newcommand{\studentinfo}{
    \flushleft{The student whose personal information is stated below:}
    \vspace{0.3cm}
    \begin{center}
    \begin{tabularx}{\textwidth}{ l X l X }
        Surname & \textbf{\studentsurname} & Name & \textbf{\studentname} \\
        Father's Name & {\studentfathername} & Mother's Name & {\studentmothername} \\
        Place of Birth & {\studentbirthplace} & Date of Birth & {\studentbirthdate} \\
        \ifdef{\malesregister}{
            Males' Register & {\malesregister} & Males' Registration Number & {\malesregistrationnumber} \\
        }{}
        Municipality & {\studentmunicipality} & Municipality Registration Number & {\studentmunicipalitynumber} \\
        Registration Number & \textbf{\studentid} & Date of Registration & {\studentregistrationdate} \\
        Enrolled via & {\enrolledvia} & Semester of Studies & {\currentsemester}
    \end{tabularx}
    \end{center}
    \vspace{0.4cm}
    was first enrolled in the 1st semester of studies of our Department in the academic year {\studentregistrationyear}. \\[6pt]

    The aforementioned student retains their student status during the current academic year {\thisyear}.

    In order to obtain the degree award, an obligatory attendance of 8 semesters is required. \\[8pt]

    The detailed trancript of records is presented in the following pages and the grading scale is indicated in the footnotes.

    This certificate is granted for any legal use.

    \vspace{0.5cm}
}
%% =============================================================================

%% Grades section
%% =============================================================================
\newenvironment{grades}{%
   \restpagesheader
   \vspace{0.2cm}
   \fontsize{10}{10}\selectfont{
}{%
}
}

\newenvironment{acadyear}[1][]{%

    \bfseries \hspace{6mm} \underline{Academic Year {#1}} \mdseries
    \setlength\extrarowheight{5pt}
    \tabularx{\textwidth}{ m{1.5cm} m{6cm} m{2cm} m{1.3cm} m{2.5cm} m{1.7cm} X }
}{%
    \endtabularx
    \vspace{0.2cm}
}

\newcommand{\grade}[7]{%
    #1 & #2 & #3 & #4 & #5 & #6 & #7 \\
}

%% =============================================================================

%% Last section
%% =============================================================================
\newcommand{\farewell}{
    \vspace{2cm}
    Notes - Remarks:
    \bfseries
    \begin{center}
        FOR THE REGISTRAR: GRAMMATIKI LOUPA \\[20pt]
        (Signature) \--- VASILIKI POTHITOU \\[20pt]
        (University's official seal)
    \end{center}
    \mdseries
}
%% =============================================================================
\endinput