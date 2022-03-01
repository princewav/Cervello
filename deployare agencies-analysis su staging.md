# Deploy su staging

### Accedere a staging con ssh senza mettere sempre la password:
```bash
cd ~/.ssh
ssh-keygen -t rsa # inserire la password di ldap
chmod 400 ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa.pub
ssh-copy-id -i ~/.ssh/id_rsa.pub eprincipe@py02-staging.vrt.ext.rm.ns.farm -f
```

### Deploy
```bash
ansible-playbook mktui-web.yml -i staging 
```

```bash
scp /Users/edoardo.principe/PycharmProjects/agencies-analysis/web_app/web_app/a.py eprincipe@py01-staging.vrt.ext.rm.ns.farm:/.
```
```bash
scp /Users/edoardo.principe/PycharmProjects/agencies-analysis/web_app/web_app/a.py eprincipe@py01-staging.vrt.ext.rm.ns.farm:/home/mktui-web
```