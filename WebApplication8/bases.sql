USE [master]
GO

/****** Object:  Database [webmarkkk]    Script Date: 11/13/2010 15:26:00 ******/
CREATE DATABASE [webmarkkk] ON  PRIMARY 
( NAME = N'webmarkkk', FILENAME = N'd:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\webmarkkk.mdf' , SIZE = 6400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'webmarkkk_log', FILENAME = N'd:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\webmarkkk_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [webmarkkk] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webmarkkk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [webmarkkk] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [webmarkkk] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [webmarkkk] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [webmarkkk] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [webmarkkk] SET ARITHABORT OFF 
GO

ALTER DATABASE [webmarkkk] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [webmarkkk] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [webmarkkk] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [webmarkkk] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [webmarkkk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [webmarkkk] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [webmarkkk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [webmarkkk] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [webmarkkk] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [webmarkkk] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [webmarkkk] SET  ENABLE_BROKER 
GO

ALTER DATABASE [webmarkkk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [webmarkkk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [webmarkkk] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [webmarkkk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [webmarkkk] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [webmarkkk] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [webmarkkk] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [webmarkkk] SET  READ_WRITE 
GO

ALTER DATABASE [webmarkkk] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [webmarkkk] SET  MULTI_USER 
GO

ALTER DATABASE [webmarkkk] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [webmarkkk] SET DB_CHAINING OFF 
GO
