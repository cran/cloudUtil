\name{cloudUtilPlot}

\alias{cloudUtilPlot}
\alias{cloudUtil}

\title{Cloud Utilization Plot}

\description{
    On the utilization graphic each horizontal line indicates the 
start and the end of one job.  Color groups different runs.
}

\usage{

cloudUtilPlot(group, begin, end, id, 
    	colormap, 
	normalize, 
	plotConcurrent, 
	plotConcurrentMax, 
	main)
}

\arguments{

  \item{begin}{ a time series of the starting events; the time format is unix 
time stamp (seconds since Jan 01 1970).}

  \item{end}{ a time series of the corresponding ending events. }

  \item{id}{ identifyer of each event. }

  \item{group}{ group of each event. }

  \item{main}{ an overall title for the plot. }

  \item{colormap}{ color vector for the data. default is the rainbow colormap 
having as much colors as we have groups. }

  \item{normalize}{ normalizes the time in a way that the groups are relative 
to each other; default is set to TRUE. }

  \item{plotConcurrent}{ plot concurrent running tasks as solid lines; 
default is set to TRUE. }

  \item{plotConcurrentMax}{ plot maximum of concurrent running tasks; default 
is set to FALSE. }

}

\details{
The \code{cloudUtilPlot} function reqires the four arguments \code{begin}, 
\code{end}, \code{group}, and \code{id}. All other arguments are optional.

}

\author{
   Christian Panse
}
\examples{
    data(cloudms2)

    #green
    col.amazon<-rgb(0.1,0.8,0.1,alpha=0.2)
    col.amazon2<-rgb(0.1,0.8,0.1,alpha=0.2)

    #blue
    col.fgcz<-rgb(0.1,0.1,0.8,alpha=0.2)
    col.fgcz2<-rgb(0.1,0.1,0.5,alpha=0.2)

    #red
    col.uzh<-rgb(0.8,0.1,0.1,alpha=0.2)
    col.uzh2<-rgb(0.5,0.1,0.1,alpha=0.2)

    cm<-c(col.amazon, col.amazon2, col.fgcz, col.fgcz2, col.uzh, col.uzh2)

    cloudUtilPlot(begin=cloudms2$BEGIN_PROCESS, 
        end=cloudms2$END_PROCESS, 
        id=cloudms2$id, 
        group=cloudms2$CLOUD, 
        colormap=cm, 
        normalize=FALSE, 
        plotConcurrent=TRUE); 

    cloudUtilPlot(begin=cloudms2$BEGIN_PROCESS, 
        end=cloudms2$END_PROCESS, 
        id=cloudms2$id, 
        group=cloudms2$CLOUD, 
        colormap=cm, 
        normalize=TRUE, 
        plotConcurrent=TRUE)
}
