<!DOCTYPE html>
<html>
<head>
    <title>ITE Conference Question</title>
</head>
<body>
<h1>{{ $contact->title }}</h1>
<p>Question from: {{ $contact->email }}</p>
<p>{{ $contact->message }}</p>
</body>
</html>
