<html>
 <head>
  <title>WEB-site of the Sletcova National Library</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
	<?php
	echo "<P>������ ����! ����� ���� ����:</P>"
	// �����������, �������� ���� ������ VER3
	CREATE USER 'SlepcovaValentina'@'%' IDENTIFIED BY 'Dc6LZquV';
	
	$link = mysql_connect('10.14.129.132', 'SlepcovaValentina', 'Dc6LZquV')
	    or die('Error: Unable to connect: ' . mysql_error());
	echo '<P>Succesfully connected!</P>';
	mysql_select_db('SlepcovaValentinaDB') or die('Error: Use database failed!');
	
	// ��������� SQL-������
	$query = 'SELECT * FROM books';
	$result = mysql_query($query) or die('Error: Query Failed: ' . mysql_error());
	
	// Check ahead, before using it
	if (mysql_num_rows($result) > 0) 
	{
		// ������� ���������� � html
		echo "<table>\n";
		while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
		    echo "\t<tr>\n";
		    foreach ($line as $col_value) {
	        	echo "\t\t<td>$col_value</td>\n";
		    }
		    echo "\t</tr>\n";
		}
		echo "</table>\n";
	}

	// ����������� ������ �� ����������
	mysql_free_result($result);
	
	// ��������� ����������
	mysql_close($link);
?>

 </body>
</html>