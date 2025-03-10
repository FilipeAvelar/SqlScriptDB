USE [master]
GO
/****** Object:  Database [SI]    Script Date: 31/01/2017 14:27:04 ******/
CREATE DATABASE [SI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLNG\MSSQL\DATA\SI.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLNG\MSSQL\DATA\SI_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SI] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SI] SET ARITHABORT OFF 
GO
ALTER DATABASE [SI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SI] SET  MULTI_USER 
GO
ALTER DATABASE [SI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SI] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SI]
GO
/****** Object:  Table [dbo].[CIFMovimento]    Script Date: 31/01/2017 14:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CIFMovimento](
	[IDMovimento] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TipoMov] [varchar](1) NULL,
	[Cliente] [numeric](18, 0) NULL,
	[Nfiscal] [varchar](20) NULL,
	[OrdemVenda] [varchar](6) NULL,
	[CFOP] [varchar](5) NULL,
	[EspecieNF] [varchar](5) NULL,
	[SerieNF] [char](5) NULL,
	[DataEmissao] [datetime] NULL,
	[DataVencimento] [datetime] NULL,
	[BaseICMS] [money] NULL,
	[ValorICMS] [money] NULL,
	[BaseSubICMS] [money] NULL,
	[ValorSubICMS] [money] NULL,
	[ValorFrete] [money] NULL,
	[ValorSeguro] [money] NULL,
	[ValorOutros] [money] NULL,
	[ValorIPI] [money] NULL,
	[ValorIRRF] [money] NULL,
	[BaseISS] [money] NULL,
	[ValorISS] [money] NULL,
	[ValorISSRet] [money] NULL,
	[ValorTotProd] [money] NULL,
	[ValorTotNF] [money] NULL,
	[TRNome] [varchar](50) NULL,
	[TRTipoFrete] [smallint] NULL,
	[TRPlacaVeic] [varchar](8) NULL,
	[TRUFVeic] [varchar](2) NULL,
	[TRCNPJ] [varchar](18) NULL,
	[TREnd] [varchar](50) NULL,
	[TRMunic] [varchar](30) NULL,
	[TRUF] [varchar](2) NULL,
	[TRInscEst] [varchar](18) NULL,
	[Qtd] [numeric](18, 0) NULL,
	[Especie] [varchar](15) NULL,
	[Marca] [varchar](15) NULL,
	[Numero] [numeric](18, 0) NULL,
	[PesoBruto] [numeric](18, 0) NULL,
	[PesoLiq] [numeric](18, 0) NULL,
	[Obs] [varchar](500) NULL,
	[NFAnual] [bit] NULL,
	[NFDirect] [bit] NULL,
	[ProcessoManut] [bit] NULL,
	[AreaCobranca] [int] NULL,
	[NFCurso] [bit] NULL,
	[NFCancelada] [bit] NULL,
	[NFImpressa] [bit] NULL,
	[NFTreinamento] [bit] NULL,
	[NFSimplesRemessa] [bit] NULL,
	[Solicitante] [varchar](50) NULL,
	[NFReimpressao] [bit] NULL,
	[NFLegis] [bit] NULL,
	[ValorAtivacao] [money] NULL,
	[QtdParcAtivacao] [numeric](18, 0) NULL,
	[NFIntegFinan] [bit] NULL,
	[ValorPis] [numeric](18, 0) NULL,
	[ValorCofins] [numeric](18, 0) NULL,
	[ValorCsll] [numeric](18, 0) NULL,
	[QtdParc] [numeric](18, 0) NULL,
	[CodEmpresa] [numeric](18, 0) NOT NULL,
	[Erro] [bit] NULL,
	[IDMovimentoNG] [int] NULL,
	[CodProcessoVenda] [int] NULL,
	[Desconto] [money] NOT NULL,
	[RPS] [varchar](15) NULL,
	[IDHistoricoNG] [int] NULL,
	[ValorJurosMulta] [money] NULL,
	[DataVencimentoAtual] [datetime] NULL,
	[IdMovimentoPai] [numeric](18, 0) NULL,
	[CodTipoFatura] [int] NULL,
	[IdCenarioNG] [int] NULL,
 CONSTRAINT [PK_CIFMovimento1] PRIMARY KEY CLUSTERED 
(
	[IDMovimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAT_BuscaDadosGlobal_RPS]    Script Date: 31/01/2017 14:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAT_BuscaDadosGlobal_RPS](
	[IdMovimento] [numeric](18, 0) NOT NULL,
	[Cliente] [numeric](18, 0) NULL,
	[RPS] [varchar](15) NULL,
	[CodProduto] [numeric](18, 0) NOT NULL,
	[CodigoProdutoNG] [varchar](4) NULL,
	[Qtd] [numeric](18, 0) NULL,
	[ValorUnit] [float] NULL,
	[Servico] [int] NOT NULL,
	[Descricao] [varchar](8000) NULL,
	[CFOP] [varchar](5) NULL,
	[DataEmissao] [datetime] NULL,
	[DataVencimento] [datetime] NULL,
	[ValorTotProd] [money] NULL,
	[ValorTotNF] [money] NULL,
	[QtdParc] [numeric](18, 0) NULL,
	[Linha] [int] NOT NULL,
	[idsituacaotributariaportributo] [int] NOT NULL,
	[idtributo] [int] NOT NULL,
	[codigosituacaotributaria] [varchar](3) NOT NULL,
	[descricaosituacaotributaria] [varchar](250) NULL,
	[Serial] [varchar](200) NULL,
	[HPF] [varchar](6) NULL,
	[EspecieNF] [varchar](5) NULL,
	[CodEmpresa] [numeric](18, 0) NOT NULL,
	[Obs] [varchar](500) NULL,
	[IdPessoa] [int] NOT NULL,
	[IdufclienteFornecedor] [int] NOT NULL,
	[IdCentroResultado] [int] NOT NULL,
	[ValorJurosMulta] [money] NULL,
	[DataVencimentoAtual] [datetime] NULL,
	[IdMovimentoPai] [numeric](18, 0) NULL,
	[IdCenarioNG] [int] NOT NULL,
	[codempresang] [numeric](18, 0) NOT NULL,
	[AreaCobranca] [int] NOT NULL,
	[idunidadeadministrativa] [int] NOT NULL,
	[IdNatureza] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_BaseICMS]  DEFAULT ((0)) FOR [BaseICMS]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorICMS]  DEFAULT ((0)) FOR [ValorICMS]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_BaseSubICMS]  DEFAULT ((0)) FOR [BaseSubICMS]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorSubICMS]  DEFAULT ((0)) FOR [ValorSubICMS]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorFrete]  DEFAULT ((0)) FOR [ValorFrete]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorSeguro]  DEFAULT ((0)) FOR [ValorSeguro]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorOutros]  DEFAULT ((0)) FOR [ValorOutros]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorIPI]  DEFAULT ((0)) FOR [ValorIPI]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorIRRF]  DEFAULT ((0)) FOR [ValorIRRF]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_BaseISS]  DEFAULT ((0)) FOR [BaseISS]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorISS]  DEFAULT ((0)) FOR [ValorISS]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorISSRet]  DEFAULT ((0)) FOR [ValorISSRet]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorTotProd]  DEFAULT ((0)) FOR [ValorTotProd]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorTotNF]  DEFAULT ((0)) FOR [ValorTotNF]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_TRTipoFrete]  DEFAULT ((1)) FOR [TRTipoFrete]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_Qtd]  DEFAULT ((0)) FOR [Qtd]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_Numero]  DEFAULT ((0)) FOR [Numero]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_PesoBruto]  DEFAULT ((0)) FOR [PesoBruto]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_PesoLiq]  DEFAULT ((0)) FOR [PesoLiq]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFAnual]  DEFAULT ((0)) FOR [NFAnual]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFDirect]  DEFAULT ((0)) FOR [NFDirect]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ProcessoManut]  DEFAULT ((0)) FOR [ProcessoManut]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_AreaCobranca]  DEFAULT ((0)) FOR [AreaCobranca]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFCurso]  DEFAULT ((0)) FOR [NFCurso]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFCancelada]  DEFAULT ((0)) FOR [NFCancelada]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFImpressa]  DEFAULT ((0)) FOR [NFImpressa]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFTreinamento]  DEFAULT ((0)) FOR [NFTreinamento]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFSimplesRemessa]  DEFAULT ((0)) FOR [NFSimplesRemessa]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFLegis]  DEFAULT ((0)) FOR [NFLegis]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_NFIntegFinan]  DEFAULT ((0)) FOR [NFIntegFinan]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorPis]  DEFAULT ((0)) FOR [ValorPis]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorCofins]  DEFAULT ((0)) FOR [ValorCofins]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_ValorCsll]  DEFAULT ((0)) FOR [ValorCsll]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento1_CodEmpresa]  DEFAULT ((1)) FOR [CodEmpresa]
GO
ALTER TABLE [dbo].[CIFMovimento] ADD  CONSTRAINT [DF_CIFMovimento_Desconto]  DEFAULT ((0)) FOR [Desconto]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreignkey com tabela Mastermaq..Parceiro_comissao_Fatura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIFMovimento', @level2type=N'COLUMN',@level2name=N'CodTipoFatura'
GO
USE [master]
GO
ALTER DATABASE [SI] SET  READ_WRITE 
GO
