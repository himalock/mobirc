? use List::MoreUtils qw(any);
? my ($channel, $channel_page_option) = @_;
? my $msg     = param('msg') || '';
? my $page    = param('page') || 1;
? global_context->mt->wrapper_file('i_phone2/_wrap.mt')->(sub {

<div class="toolbar">
    <h1><?= $channel->name ?></h1>
    <a class="button slideup" id="goMenuButton" href="/iphone2/">Menu</a>
</div>

<form action='/iphone2/channel' method='post' id="postForm">
    <div class="input">
        <input type="hidden" name="server" value="<?= $channel->server->id ?>" />
        <input type="hidden" name="channel" value="<?= $channel->name_urlsafe_encoded?>" />
        <input id="MessageBox" value="<?= $msg ?>" type="text" name="msg" size="10" class="text" />
    </div>
</form>

<? if ($channel) { ?>
<?    if (@{$channel->message_log}) { ?>
<?       my $log  = [ reverse $channel->message_log  ] ?>

<div id="content">
    <?   my $i = 0; for my $message (splice @$log, ($page - 1) * 25, 25) { ?>
    <?      my $is_new = any { $message eq $_ } $channel->recent_log; ?>
    <div class="message <?= $message->class ?> <?=  $is_new ? 'new' : ''?>">
        <span class="time">
            <? if (my ($id) = $message->body =~ m{\[([a-z]+)\]}) { ?>
            <select class="operations">
                <option selected="selected" value="">♥♣</option>
                <option value="/me fav <?= $id ?>">fav</option>
            </select>
            <? } ?>

            <?= sprintf "%02d:%02d", $message->hour, $message->minute ?></span>
        </span>

        <? if ($message->who) { ?>
        <span class="who <?= $message->who_class ?>" onclick="document.getElementById('foo').click()">
            <?= $message->who ?>

            <? if ($message->{metadata} && $message->{metadata}->{uri}) { ?>
                <a href="<?= $message->{metadata}->{uri} ?>" class="uri">URI</a>
            <? } ?>

        </span>
        <? } ?>

        <div class="body">
            <?= encoded_string($message->html_body) ?>
        </div>
    </div>
    <?   $i++ } ?>
</div>

<?    } else { ?>
<p>No message here.</p>
<?    } ?>
<? } else { ?>
<p>No such channel.</p>
<? } ?>

? });
