<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Sign up • Naresh IT</title>
  <style>
    /* Reset + base */
    * { box-sizing: border-box; margin: 0; padding: 0; }
    :root{
      --card-bg: #fff;
      --muted: #8e8e8e;
      --input-border: #dbdbdb;
      --primary: #0095f6; /* action color similar feel */
      --shadow: 0 10px 30px rgba(0,0,0,0.08);
      --radius: 8px;
      --brand-gradient: linear-gradient(45deg,#feda75,#fa7e1e,#d62976,#962fbf,#4f5bd5);
      font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial;
    }

    body{
      background: linear-gradient(180deg,#fafafa 0%, #fff 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 32px;
    }

    .page {
      display: flex;
      gap: 32px;
      align-items: center;
      justify-content: center;
      max-width: 980px;
      width: 100%;
    }

    /* left visual (phone mockup) */
    .visual {
      flex: 1;
      display: none; /* hidden on small screens */
      align-items: center;
      justify-content: center;
    }
    .phone {
      width: 300px;
      height: 560px;
      border-radius: 28px;
      background: linear-gradient(180deg,#111,#222);
      padding: 18px;
      box-shadow: var(--shadow);
      position: relative;
      overflow: hidden;
    }
    .phone .screen {
      width: 100%;
      height: 100%;
      background:
        radial-gradient(circle at 10% 10%, rgba(255,255,255,0.06), transparent 10%),
        repeating-linear-gradient(180deg, rgba(255,255,255,0.02) 0 1px, transparent 1px 30px),
        linear-gradient(180deg, #0f1720 0%, #0c1013 100%);
      border-radius: 18px;
      padding: 18px;
      color: #fff;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }
    .story {
      height: 56px;
      display:flex;
      gap:10px;
      align-items:center;
      overflow:hidden;
    }
    .story .dot {
      width:56px;height:56px;border-radius:50%;
      background: var(--brand-gradient);
      box-shadow: 0 6px 16px rgba(0,0,0,0.35);
      display:inline-block;
    }
    .feed {
      margin-top: 8px;
      flex:1;
      background: linear-gradient(180deg, rgba(255,255,255,0.03), transparent 40%);
      border-radius: 12px;
      padding: 12px;
      display:flex;flex-direction:column;gap:8px; overflow:auto;
    }
    .post {
      height: 120px; border-radius:10px; background: linear-gradient(180deg, rgba(255,255,255,0.02), transparent);
      display:flex;align-items:center; padding:10px; gap:10px;
    }
    .post .avatar{ width:42px;height:42px;border-radius:50%; background:var(--brand-gradient)}
    .post .content{flex:1}
    .post .img{width:74px;height:74px;border-radius:8px;background:linear-gradient(90deg,#d7d2cc,#304352);}

    /* right card (form) */
    .card {
      flex: 0 0 420px;
      background: var(--card-bg);
      border-radius: 12px;
      box-shadow: var(--shadow);
      padding: 28px;
    }
    .logo {
      display:flex;
      align-items:center;
      justify-content:center;
      gap:10px;
      margin-bottom: 14px;
    }
    .logo .mark {
      width:42px;height:42px;border-radius:10px;
      background:var(--brand-gradient);
      box-shadow: 0 6px 16px rgba(0,0,0,0.12);
    }
    .logo h1{
      font-size:20px;font-weight:600;color:#111;
    }
    .card p.sub { color:var(--muted); text-align:center; margin-bottom: 16px; font-size:14px }

    .social-btn{
      width:100%;
      display:inline-flex;
      align-items:center;
      justify-content:center;
      gap:10px;
      padding:10px;
      border-radius:8px;
      font-weight:600;
      border:1px solid var(--input-border);
      cursor:pointer;
      margin-bottom:12px;
      background: #fff;
    }
    .divider {
      display:flex; align-items:center; gap:12px; margin:12px 0 18px;
    }
    .divider .line{ flex:1; height:1px; background:var(--input-border) }
    .divider small{ color:var(--muted); font-size:12px; }

    form .input {
      margin-bottom:12px;
    }
    input[type="text"], input[type="password"], input[type="email"], select {
      width:100%;
      padding:10px 12px;
      border-radius:8px;
      border:1px solid var(--input-border);
      font-size:14px;
      outline:none;
    }
    input:focus { border-color: #b3d4ff; box-shadow: 0 6px 14px rgba(14,82,255,0.06); }

    .actions {
      margin-top:10px;
      display:flex;
      gap:8px;
      flex-direction:column;
    }
    .primary {
      background: var(--primary);
      color: #fff;
      padding:10px;
      border-radius:8px;
      font-weight:700;
      border:none;
      cursor:pointer;
    }
    .primary:disabled{ opacity:0.6; cursor:not-allowed; }

    .signin {
      margin-top:12px;
      text-align:center;
      color:var(--muted);
      font-size:14px;
    }
    .signin a{ color:var(--primary); text-decoration:none; font-weight:600; }

    .small-note { font-size:12px; color:var(--muted); margin-top:12px; text-align:center }

    .footer {
      margin-top:18px;
      text-align:center;
      font-size:13px;
      color:var(--muted);
    }

    /* mobile */
    @media (max-width: 880px){
      .page { padding: 8px }
      .visual { display:none }
      .page { flex-direction: column; gap: 16px; align-items:center }
      .card { width:100%; max-width:420px }
    }

    /* show visual at larger screens */
    @media (min-width: 880px){
      .visual { display:flex; flex:1; }
    }

    /* tiny helpers */
    .muted { color:var(--muted); font-size:13px; text-align:center }
    .error { color:#d93025; font-size:13px; margin-top:6px; }
  </style>
</head>
<body>
  <div class="page">
    <div class="visual" aria-hidden="true">
      <div class="phone" role="img" aria-label="app preview">
        <div class="screen">
          <div class="story">
            <div class="dot" title="Stories"></div>
            <div style="flex:1"></div>
            <div style="width:40px;height:6px;background:rgba(255,255,255,0.06);border-radius:6px"></div>
          </div>
          <div class="feed">
            <div class="post">
              <div class="avatar"></div>
              <div class="content">
                <div style="height:12px;width:50%;background:rgba(255,255,255,0.05);border-radius:6px;margin-bottom:8px"></div>
                <div style="height:8px;width:80%;background:rgba(255,255,255,0.03);border-radius:6px"></div>
              </div>
              <div class="img"></div>
            </div>

            <div class="post">
              <div class="avatar"></div>
              <div class="content">
                <div style="height:12px;width:60%;background:rgba(255,255,255,0.05);border-radius:6px;margin-bottom:8px"></div>
                <div style="height:8px;width:40%;background:rgba(255,255,255,0.03);border-radius:6px"></div>
              </div>
              <div class="img"></div>
            </div>
            <!-- more placeholder posts -->
          </div>
        </div>
      </div>
    </div>

    <div class="card" role="region" aria-labelledby="signupTitle">
      <div class="logo">
        <div class="mark" aria-hidden="true"></div>
        <h1 id="signupTitle">Naresh IT</h1>
      </div>
      <p class="sub">Sign up to learn DevOps • AWS • Azure • GCP • MLOps — 09:00 PM batch, Hyderabad</p>

      <button class="social-btn" id="fbBtn" type="button" onclick="social('facebook')">
        <!-- simple social style -->
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" style="opacity:.9">
          <path d="M22 12.07C22 6.48 17.52 2 12 2S2 6.48 2 12.07c0 4.99 3.66 9.12 8.44 9.93v-7.03H7.9v-2.9h2.54V9.41c0-2.5 1.49-3.89 3.77-3.89 1.09 0 2.23.2 2.23.2v2.45h-1.25c-1.23 0-1.61.77-1.61 1.56v1.88h2.74l-.44 2.9h-2.3V22c4.78-.81 8.44-4.94 8.44-9.93z" fill="#1877f2"/>
        </svg>
        Continue with Facebook
      </button>

      <div class="divider"><div class="line"></div><small>or</small><div class="line"></div></div>

      <form id="signupForm" novalidate>
        <div class="input">
          <input type="text" id="name" name="name" placeholder="Full name" required autocomplete="name">
        </div>
        <div class="input">
          <input type="text" id="mobile" name="mobile" placeholder="Mobile number" inputmode="tel" required>
        </div>
        <div class="input">
          <input type="email" id="email" name="email" placeholder="Email" required autocomplete="email">
        </div>
        <div class="input">
          <input type="password" id="psw" name="psw" placeholder="Password (min 6 chars)" minlength="6" required autocomplete="new-password">
        </div>
        <div class="input">
          <input type="password" id="pswRepeat" name="psw-repeat" placeholder="Confirm password" required autocomplete="new-password">
          <div id="pwErr" class="error" style="display:none">Passwords do not match</div>
        </div>

        <div class="actions">
          <button class="primary" id="submitBtn" type="submit">Sign up</button>
        </div>
      </form>

      <div class="small-note">By signing up you agree to our <a href="#">Terms</a> and <a href="#">Privacy Policy</a>.</div>

      <div class="signin">
        Have an account? <a href="#">Log in</a>
      </div>

      <div class="footer">
        <div style="margin-top:12px; font-weight:600">Thank you — Happy Learning 👋</div>
      </div>
    </div>
  </div>

  <script>
    // small interactions: mock social, validation, password match
    function social(provider){
      alert('Social login with ' + provider + ' is a placeholder. Implement OAuth on server.');
    }

    const form = document.getElementById('signupForm');
    const psw = document.getElementById('psw');
    const pswRepeat = document.getElementById('pswRepeat');
    const pwErr = document.getElementById('pwErr');
    const submitBtn = document.getElementById('submitBtn');

    function passwordsMatch(){
      if(psw.value && pswRepeat.value && psw.value !== pswRepeat.value){
        pwErr.style.display = 'block';
        return false;
      } else {
        pwErr.style.display = 'none';
        return true;
      }
    }

    psw.addEventListener('input', passwordsMatch);
    pswRepeat.addEventListener('input', passwordsMatch);

    form.addEventListener('submit', function(e){
      e.preventDefault();
      // basic client-side validations
      const name = document.getElementById('name').value.trim();
      const mobile = document.getElementById('mobile').value.trim();
      const email = document.getElementById('email').value.trim();

      if(!name || !mobile || !email || !psw.value || !pswRepeat.value){
        alert('Please fill all fields.');
        return;
      }
      if(!passwordsMatch()){
        alert('Please fix the errors.');
        return;
      }
      if(psw.value.length < 6){
        alert('Password must be at least 6 characters.');
        return;
      }

      // TODO: Replace this with real server request (fetch/ajax)
      const payload = { name, mobile, email };
      console.log('submit payload', payload);

      // give user feedback
      submitBtn.disabled = true;
      submitBtn.textContent = 'Creating account...';

      // simulate async server call
      setTimeout(() => {
        submitBtn.disabled = false;
        submitBtn.textContent = 'Sign up';
        alert('Account created! Check your email to verify (this is a demo).');
        form.reset();
      }, 900);
    });
  </script>
</body>
</html>
