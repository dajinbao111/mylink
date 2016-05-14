.class public Lcom/autonavi/xm/util/HttpHandler$HttpTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mHttpURLConnection:Ljava/net/HttpURLConnection;

.field private mIsRunning:Z

.field private mRequestCode:I

.field private mRequestContent:Ljava/lang/String;

.field private mUrlStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/autonavi/xm/util/HttpHandler;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/util/HttpHandler;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mUrlStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mRequestContent:Ljava/lang/String;

    iput p4, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mRequestCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    return-void
.end method

.method public connect()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mRequestContent:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "POST"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mRequestContent:Ljava/lang/String;

    iget-object v5, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget-object v5, v5, Lcom/autonavi/xm/util/HttpHandler;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    iget-boolean v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    # getter for: Lcom/autonavi/xm/util/HttpHandler;->mIsCookieEnabled:Z
    invoke-static {v2}, Lcom/autonavi/xm/util/HttpHandler;->access$100(Lcom/autonavi/xm/util/HttpHandler;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Set-Cookie"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "set-cookie"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iput-object v2, v4, Lcom/autonavi/xm/util/HttpHandler;->mCookie:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v2, -0x3

    invoke-virtual {v0, p0, v2}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    iget-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getBytes(Ljava/io/InputStream;)[B
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
    iget-boolean v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

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
    iget-boolean v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V
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
    iget-boolean v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z
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

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mRequestCode:I

    return v0
.end method

.method public getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget-object v3, v3, Lcom/autonavi/xm/util/HttpHandler;->mEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v2, -0x4

    invoke-virtual {v1, p0, v2}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V

    goto :goto_0
.end method

.method public open()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mUrlStr:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/autonavi/xm/util/HttpHandler;->getProxy()Ljava/net/Proxy;
    invoke-static {}, Lcom/autonavi/xm/util/HttpHandler;->access$000()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    # getter for: Lcom/autonavi/xm/util/HttpHandler;->mIsCookieEnabled:Z
    invoke-static {v3}, Lcom/autonavi/xm/util/HttpHandler;->access$100(Lcom/autonavi/xm/util/HttpHandler;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget-object v3, v3, Lcom/autonavi/xm/util/HttpHandler;->mCookie:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "Cookie"

    iget-object v4, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    iget-object v4, v4, Lcom/autonavi/xm/util/HttpHandler;->mCookie:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/autonavi/xm/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V

    goto :goto_2
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->open()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    invoke-virtual {v2, p0, v1}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->disconnect()V

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xm/util/HttpHandler;->onResponse(Lcom/autonavi/xm/util/HttpHandler$HttpTask;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    :try_start_5
    iget-boolean v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mIsRunning:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->this$0:Lcom/autonavi/xm/util/HttpHandler;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lcom/autonavi/xm/util/HttpHandler;->onError(Lcom/autonavi/xm/util/HttpHandler$HttpTask;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_5
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->disconnect()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/util/HttpHandler$HttpTask;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-void
.end method
