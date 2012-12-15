USE PSPITS
GO

ALTER TABLE BeneficiaryEvidence ADD evidencePresented VARCHAR(5)
GO

ALTER TABLE BeneficiaryEvidence ADD evidenceAccepted VARCHAR(5)
GO

ALTER TABLE BeneficiaryEvidence DROP COLUMN evidenceStorageLocation
GO

ALTER TABLE BeneficiaryEvidence ADD fileExtention VARCHAR(20)
GO

ALTER TABLE BeneficiaryEvidence ADD fileContent VARBINARY(MAX)
GO

ALTER TABLE BeneficiaryEvidence ADD fileOriginalName VARCHAR(250) 
GO

ALTER TABLE BeneficiaryEvidence ADD fileSize INTEGER
GO

ALTER TABLE BeneficiaryEvidence ADD dateVerified DATE
GO

ALTER TABLE BeneficiaryEvidence ADD whoVerified VARCHAR(250) 
GO

ALTER TABLE BeneficiaryEvidence DROP CONSTRAINT PK_BeneficiaryEvidencess
GO

ALTER TABLE BeneficiaryEvidence DROP COLUMN relationID 
GO

ALTER TABLE BeneficiaryEvidence ADD CONSTRAINT [PK_BeneficiaryEvidencess] PRIMARY KEY CLUSTERED 
(
	[pensionID] ASC,
	[evidenceID] ASC,
	[beneficiaryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

GO

INSERT INTO ListType(listTypeID, listTypeText) VALUES(20, 'Beneficiary Evidence')
GO

INSERT INTO List(listTypeID, listText, listValue) VALUES (20, 'Original Birth Certificate', 1)
GO

INSERT INTO List(listTypeID, listText, listValue) VALUES (20, 'Nationaility Certificate', 2)
GO

INSERT INTO List(listTypeID, listText, listValue) VALUES (20, 'Marriage Certificate', 3)
GO

USE [PSPITS]
GO

/****** Object:  View [dbo].[vwlistEvidence]    Script Date: 12/15/2012 14:34:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vwlistBeneficiaryEvidence]
AS
SELECT     dbo.List.listID AS evidenceID, dbo.List.listText AS evidence, dbo.List.listValue AS evidenceCode
FROM         dbo.List INNER JOIN
                      dbo.ListType ON dbo.List.listTypeID = dbo.ListType.listtypeID
WHERE     (dbo.List.listTypeID = 20)

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "List"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ListType"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwlistBeneficiaryEvidence'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwlistBeneficiaryEvidence'
GO

