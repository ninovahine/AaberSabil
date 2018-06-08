<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reservation</title>
</head>
<body>
<div style="color:red;">
				${message}
				</div>
<table class="table">
                                <thead>
                                    <tr>
                                        <th>email Voyageur</th>
                                        <th>email hote</th>
                                        <th>jours de travail</th>
                                        <th>nombre de personne</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="success">
                                        <td><%out.print(session.getAttribute("mail"));%></td>
                                        <td><%out.print(session.getAttribute("mailh")); %></td>
                                        <td><%out.print(session.getAttribute("date")); %></td>
                                        <td><%out.print(session.getAttribute("date1")); %></td>
                                        <td><%out.print(session.getAttribute("nbrp")); %></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
</body>
</html>