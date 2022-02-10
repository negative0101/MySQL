SELECT CONCAT_WS(' ',u.id,u.username) AS id_username, u.email
FROM users AS u
RIGHT JOIN users_photos AS up ON u.id = up.user_id
RIGHT JOIN photos AS p ON p.id = up.photo_id
WHERE u.id = p.id
ORDER BY u.id ASC
