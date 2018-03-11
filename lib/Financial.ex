defmodule FinancialFunctions do
  @moduledoc"""
  A module to perform financial functions.
  The following terminology are used throughout the module :
      ROE - Return on Equity.
      PAT - Profit After Tax.
      ROT - Return on Investments. (Also, Return on Capital Employed)
      EBIT - Earnings Before Interest & Taxes.
      T - Corporate Tax Rate.
      NPM - Net profit Margin.
      nshares - number of shares.
      EPS - Earning Per Share.
      DPS - Dividend Per Shares.
      d - Dividend.
      FV - Future Value of money.
      n - n periods.
      r - interest rate of 'r' per period.
      p - Original Principal Amt or present value.
      m - quaterly or monthly compounding.
      f - future value of money.
      FVA1 - Future Value of Annuity of Re 1, r - interest rate, n - periods.
      FVAN - Future Value Annuity Factor at 'r%' for 'n' years.
      EIR - Effective Interest rate.
      PVA1 - Present Value of Annuity of Re 1.
      PVAN - Present Value Annuity Factor at 'r%' for 'n' years.
  """
  @doc"""
  Returns ROE.
  """
  def roe(pat, netWorth), do: pat * 100 / netWorth
  @doc"""
  Takes EBIT, T, NetAssets and returns ROI.
  """
  def roi(ebit, t, netAssets), do: (ebit * (1 - t) * 100)/ netAssets
  @doc"""
  Takes PAT, Sales & returns NPM.
  """
  def npm(pat, sales), do: (pat * 100) / sales
  @doc"""
  Takes PAT, nShares & returns EPS.
  """
  def eps(pat, nShares), do: pat / nShares
  @doc"""
  Takes d, nShares & returns DPS.
  """
  def dps(d, nShares), do: d / nShares
  def fv(p, r, n), do: p * :math.pow(1 + r, n)
  def fv(p, r, n, m), do: p * :math.pow(1 + (r / m), m * n)


  def pv(f, r, n), do: f / :math.pow(1 + r, n)
  def pv(f, r, n, m), do: f / (:math.pow(1 + (r / m), m * n))


  def fva1(r, n), do: 1..n |> Enum.reduce(0, fn(x , acc) -> acc + (:math.pow(1 + r, x)) end)


  def pva1(r, n), do: 1..n |> Enum.reduce(0, fn(x, acc) -> acc + (1 / :math.pow(1 + r, x)) end)


  def fvan(r, n), do: (:math.pow(1 + r, n) - 1) / r

  def pvan(r, n) do
    k = :math.pow(1 + r, n)
    (k - 1) / (r * k)
  end


  def eir(r, m), do: :math.pow(1 + (r / m), m) - 1


end
