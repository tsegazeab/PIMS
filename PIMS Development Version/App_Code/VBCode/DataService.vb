Imports Microsoft.VisualBasic

Imports System.Security.Cryptography
Imports System.IO
Imports System.Text

Public Class DataService
    ' Use DES CryptoService with Private key pair

    Private mSEncryptionKey As String = "encryptstring"
    Private mIV() As Byte = {&H25, &H29, &H93, &H27, &H52, &HFD, &HAE, &HBC}
    Private mkey() As Byte = {}

#Region " Public Properties "

    Public WriteOnly Property SEncryptionKey() As String
        Set(ByVal Value As String)
            mSEncryptionKey = Value
        End Set
    End Property

    Public WriteOnly Property IV() As Byte()
        Set(ByVal Value As Byte())
            mIV = Value
        End Set
    End Property

#End Region

#Region " Public Functions "

    Public Sub New()

    End Sub

    Public Sub New(ByVal nEncryptionKey As String, ByVal nIV As Byte())
        SEncryptionKey = nEncryptionKey
        IV = nIV
    End Sub

    Public Function Decrypt(ByVal stringToDecrypt As String) As String
        Dim inputByteArray(stringToDecrypt.Length) As Byte

        ' Note: The DES CryptoService only accepts certain key byte lengths
        ' We are going to make things easy by insisting on an 8 byte legal key length

        Try
            mkey = System.Text.Encoding.UTF8.GetBytes(Left(mSEncryptionKey, 8))
            Dim des As New DESCryptoServiceProvider()

            ' we have a base 64 encoded string so first must decode to regular unencoded (encrypted) string
            inputByteArray = Convert.FromBase64String(stringToDecrypt)

            ' now decrypt the regular string
            Dim ms As New MemoryStream()
            Dim cs As New CryptoStream(ms, des.CreateDecryptor(mkey, mIV), CryptoStreamMode.Write)

            cs.Write(inputByteArray, 0, inputByteArray.Length)
            cs.FlushFinalBlock()

            Dim encoding As System.Text.Encoding = System.Text.Encoding.UTF8
            Return encoding.GetString(ms.ToArray())

        Catch e As Exception
            Return e.Message
        End Try
    End Function

    Public Function Encrypt(ByVal stringToEncrypt As String) As String
        Try
            mkey = System.Text.Encoding.UTF8.GetBytes(Left(mSEncryptionKey, 8))
            Dim des As New DESCryptoServiceProvider()

            ' convert our input string to a byte array
            Dim inputByteArray() As Byte = Encoding.UTF8.GetBytes(stringToEncrypt)

            'now encrypt the bytearray
            Dim ms As New MemoryStream()
            Dim cs As New CryptoStream(ms, des.CreateEncryptor(mkey, mIV), CryptoStreamMode.Write)
            cs.Write(inputByteArray, 0, inputByteArray.Length)
            cs.FlushFinalBlock()
            ' now return the byte array as a "safe for XMLDOM" Base64 String
            Return Convert.ToBase64String(ms.ToArray())
        Catch e As Exception
            Return e.Message
        End Try

    End Function

#End Region

End Class

Public Class AppWorks


    Public Function GetDate(ByVal mydate As DateTime) As String
        'check date if today, yesterday and display in UI friendly
        Dim returnDate As String

        If mydate.Date = Today.Date Then
            returnDate = "Today at " & mydate.ToShortTimeString

        ElseIf mydate.Date = Today.AddDays(-1) Then
            returnDate = "Yesterday at " & mydate.ToShortTimeString

        ElseIf mydate.Date = Today.AddDays(-2) Then
            returnDate = WeekdayName(Weekday(mydate)) & " at " & mydate.ToShortTimeString
        Else
            returnDate = MonthName(Month(mydate), True) & " " & Day(mydate) & " " & Year(mydate)
        End If

        Return returnDate
    End Function
End Class

