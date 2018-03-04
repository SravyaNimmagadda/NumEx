defmodule FinancialFunctions do


  #ROE => Return on Equity, PAT => Profit after Tax
  def roe(pat, netWorth), do: pat * 100 / netWorth

  #ROT => Return on Investments (also called Return on capital employed)
  #EBIT => Earnings before intrest and taxes
  #T => Corporate Tax rate
  def roi(ebit, t, netAssets), do: (ebit * (1 - t) * 100)/ netAssets

  #NPM => Net profit Margin
  def npm(pat, sales), do: (pat * 100) / sales

  #nshares => number of shares, EPS => Earning
  def eps(pat, nShares), do: pat / nShares

  #DPS => Dividend Per Shares, d => Dividend
  def dps(d, nShares), do: d / nShares

 #FV => Future Value of money,
 #n => n periods,
 #r => interest rate of 'r' per period,
 #p => Original Principal Amt or present value
  def fv(p, r, n), do: p * :math.pow(1 + r, n)

  #m => quaterly or monthly compounding
  def fv(p, r, n, m), do: p * :math.pow(1 + (r / m), m * n)

  #f => future value of money
  def pv(f, r, n), do: f / :math.pow(1 + r, n)
  def pv(f, r, n, m), do: f / (:math.pow(1 + (r / m), m * n))

  #FVA1 => Future Value of Annuity of Re 1, r => interest rate, n => periods
  def fva1(r, n), do: 1..n |> Enum.reduce(0, fn(x , acc) -> acc + (:math.pow(1 + r, x)) end)

  #PVA1 => Present Value of Annuity of Re 1
  def pva1(r, n), do: 1..n |> Enum.reduce(0, fn(x, acc) -> acc + (1 / :math.pow(1 + r, x)) end)

  #FVAN => Future Value Annuity Factor at 'r%' for 'n' years
  def fvan(r, n), do: (:math.pow(1 + r, n) - 1) / r

  def pvan(r, n) do
    k = :math.pow(1 + r, n)
    (k - 1) / (r * k)
  end

  #EIR => Effective Interest rate
  def eir(r, m), do: :math.pow(1 + (r / m), m) - 1


end
