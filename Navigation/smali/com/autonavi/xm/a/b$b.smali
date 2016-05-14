.class public Lcom/autonavi/xm/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/a/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Z

.field private f:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/a/b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/xm/a/b$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/xm/a/b$b;->c:Ljava/lang/String;

    iput p4, p0, Lcom/autonavi/xm/a/b$b;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/a/b$b;->d:I

    return v0
.end method

.method public a(Ljava/io/InputStream;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    :try_start_0
    new-array v2, v2, [B

    :goto_1
    iget-boolean v3, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    iget-boolean v2, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_3
    iget-boolean v2, p0, Lcom/autonavi/xm/a/b$b;->e:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_2
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public b()Ljava/io/InputStream;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xm/a/b$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    move v1, v0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/autonavi/xm/a/b$b;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xm/a/b;->a()Ljava/net/Proxy;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz v1, :cond_6

    const-string v3, "POST"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    iget-object v3, v3, Lcom/autonavi/xm/a/b;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "Cookie"

    iget-object v4, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    iget-object v4, v4, Lcom/autonavi/xm/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    iget-object v3, v3, Lcom/autonavi/xm/a/b;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    iget-object v4, v4, Lcom/autonavi/xm/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/autonavi/xm/a/b$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    iget-object v5, v5, Lcom/autonavi/xm/a/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-boolean v3, p0, Lcom/autonavi/xm/a/b$b;->e:Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v0, v2

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v3, "GET"

    goto :goto_2

    :cond_7
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_a

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "set-cookie"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    iput-object v1, v3, Lcom/autonavi/xm/a/b;->b:Ljava/lang/String;

    :cond_9
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    :goto_4
    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    iget-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    const/4 v1, -0x3

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    iget-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xm/a/b$b;->b()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/xm/a/b$b;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v0, p0, Lcom/autonavi/xm/a/b$b;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/a/b$b;->a:Lcom/autonavi/xm/a/b;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$b;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/autonavi/xm/a/b$b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/autonavi/xm/a/b$b;->c()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method
