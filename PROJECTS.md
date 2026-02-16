# PROJECTS.md - Active Work

## 🔥 FOUNDATION (Task #1) - OpenClaw Lean Operation Setup

**Status:** 🟡 In Progress  
**Owner:** Kiki  
**Started:** 2026-02-16  
**Target:** 2026-02-23 (1 week)  
**Priority:** CRITICAL

**Objective:** Cut OpenClaw costs 97% via token discipline, model routing, and lean architecture.

---

### **PHASE 1: Foundation Hardening** 🎯 THIS WEEK

**Target:** 80% cost reduction by EOW

- [ ] **1.1 Session Init Rule** (5 min)
  - Add session init rule to `AGENTS.md`
  - Test: verify context load on session start
  - Expected: 50kb → 10kb context per prompt

- [ ] **1.2 Install Ollama** (10 min)
  - `brew install ollama`
  - `ollama pull llama3:8b`
  - Test: `ollama run llama3:8b "test"`

- [ ] **1.3 Model Routing** (15 min)
  - Set Haiku as primary in `openclaw.json`
  - Add fallbacks: Sonnet → Opus
  - Route heartbeats to Ollama
  - Test: run heartbeat, verify model used

- [ ] **1.4 Compress Workspace Files** (30 min)
  - Trim `SOUL.md` to 200 words max
  - Trim `AGENTS.md` to 500 words max
  - Trim `USER.md` to 100 words max
  - Trim `TOOLS.md` to 300 words max
  - Test: verify context size drop

- [ ] **1.5 Token Audit Setup** (15 min)
  - Run test task (research query)
  - Screenshot Anthropic dashboard
  - Feed screenshot back to Kiki
  - Repeat 3x for calibration

**Phase 1 Total Time:** ~1 hour  
**Expected Result:** Idle cost → $0, active cost → 80% reduction

---

### **PHASE 2: Agent Factory** 📅 NEXT WEEK

- [ ] **2.1 SOUL Templates** (4 hrs)
  - Corporate Assistant template
  - Power User template
  - Family Bot template
  - Research Agent template
  - Customer Support template

- [ ] **2.2 Per-Agent Model Docs** (2 hrs)
  - Document cost-optimization patterns
  - Family bot = Haiku only
  - Research bot = Haiku → Sonnet → Opus
  - Power user = Sonnet primary

- [ ] **2.3 Bindings Wizard** (3 hrs)
  - CLI helper: `openclaw bindings add`
  - Test: `openclaw agents list --bindings`

**Phase 2 Total Time:** ~9 hours

---

### **PHASE 3: Sub-Agent Orchestration** 📅 WEEK 3

- [ ] **3.1 Sub-Agent Task Templates** (4 hrs)
  - Lead gen workflow (Research → Writing → File org)
  - Content workflow (Outline → Draft → Polish)

- [ ] **3.2 Cost Reporting** (2 hrs)
  - Sub-agents report tokens at completion
  - Add cost summary to announce

- [ ] **3.3 Auto-Archive Config** (1 hr)
  - Set `archiveAfterMinutes: 60`
  - Test: verify cleanup

**Phase 3 Total Time:** ~7 hours

---

### **PHASE 4: Monitoring** 📅 WEEK 4

- [ ] **4.1 Dashboard Widget** (2 hrs)
  - Keep token usage visible during tests

- [ ] **4.2 Daily Audit Cron** (2 hrs)
  - Auto-screenshot dashboard
  - Feed to Kiki for calibration

- [ ] **4.3 Cost Alerts** (1 hr)
  - If daily > $X, alert Telegram

**Phase 4 Total Time:** ~5 hours

---

### **SUCCESS METRICS**

- **Idle cost:** $2–3/day → **$0**
- **Simple tasks:** $5–10 → **$0.10–0.50**
- **Research:** $50–100 → **$3–6**
- **Writing:** $20–50 → **$2–5**
- **Complex reasoning:** $100–200 → **$10–20**
- **Monthly burn:** $1,500–3,000 → **$50–150** (95–97% savings)

---

### **BLOCKERS**

None yet.

---

### **NOTES**

- Keep workspace files **lean** — every file injects on every turn
- Model routing = ruthless — cheap first, escalate only when blocked
- Ollama for heartbeats = zero idle burn
- Token audits = cost visibility + self-calibration
