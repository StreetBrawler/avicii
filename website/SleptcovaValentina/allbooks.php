<html>
 <head>
  <title>WEB-site of the Sletcova National Library</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
	<?php
	printf('<P>������ ����! ����� ���� ����:</P>');
	// �����������, �������� ���� ������ VER3
	
	$link = mysqli_connect('10.14.129.132', 'SlepcovaValentina', 'Dc6LZquV','SlepcovaValentinaDB')
	    or die('Error: Unable to connect: ' . mysqli_connect_error());
	echo '<P>Succesfully connected!</P>';
	
	// ��������� SQL-������
	$SQLquery = 'SELECT * FROM author INNER JOIN books on books.AuthorID=authors.AuthorID';
	$SQLresult = mysqli_query($link,$SQLquery);
	while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<P>%s %s </P>',$result[0],$result[1]);
	}
	// ����������� ������ �� ����������
	mysqli_free_result($SQLresult);
	mysqli_close($link);

?>

 </body>
</html>